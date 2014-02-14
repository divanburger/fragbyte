grammar GLSL;

@header {
import java.util.Stack;

import whitesquare.glslcross.ast.*;
import whitesquare.glslcross.ast.optimizers.*;
}

@members {
private Functions functions = new Functions();
private Variables variables = new Variables();
private LogWriter log = null;
private TypeHelper typeHelper = null;
private ScopeManager scope = new ScopeManager();
private Type tInt;
private Type tFloat;
private Type tVec2;
private Type tVec3;
private Type tVec4;
private Type tVoid;
private Type tError;
private Unit unit = new Unit();

public void setLog(LogWriter log) {
	this.log = log;
}

public Unit getUnit() {
	return unit;
}

public Variables getVariables() {
	return variables;
}
}

glsl: 
	{
		tInt = unit.addType("int", 1, true);
		tFloat = unit.addType("float", 1, false);
		tVec2 = unit.addType("vec2", 2, false);
		tVec3 = unit.addType("vec3", 3, false);
		tVec4 = unit.addType("vec4", 4, false);
		tVoid = unit.addType("void", 0, true);
		tError = unit.addType("_ERROR_", 0, true);
		
		typeHelper = new TypeHelper(log, tError);
			
		scope.pushScope(unit);
		
		Variable fragColor = variables.add("gl_FragColor", tVec4, false);
		unit.outputs.add(fragColor);
		
		Variable fragCoord = variables.add("gl_FragCoord", tVec2, false);
		unit.inputs.add(fragCoord);
	}
	(uniformDeclaration)*
	(function|varDeclaration)* EOF
	{
		scope.popScope();
	}
	;

function:
	type ID
	{
		ArrayList<Variable> parms = new ArrayList<Variable>();
	} 
	'(' ((parameter {parms.add($parameter.var);})? (',' parameter {parms.add($parameter.var);})* | 'void') ')' 
	{		
		int stackIn = 0;
		for (Variable var : parms) stackIn += var.type.size;
		Function func = functions.add($ID.text, $type.t, stackIn);
		scope.pushScope(func);
		for (Variable var : parms) func.parameters.add(new Parameter(var));
	}
	block
	{
		scope.popScope();
	}
	;

parameter returns [Variable var]: 
	type ID {$var = variables.add($ID.text, $type.t, false);}
	;

block: '{' statement* '}';

statement: 
	varDeclaration
	| forStatement
	| assignment
	| returnStatement
	| {scope.pushScope(new Block());} block {scope.popScope();};
	
uniformDeclaration returns [Variable var]:
	'uniform' type ID
	{
		$var = variables.add($ID.text, $type.t, false);
		unit.inputs.add($var);
	} ';'
	;
	
varDeclaration returns [Variable var] :
	{boolean constant = false, assigned = false;}
	('const' {constant = true;})? 
	type identifier=ID
	{
		$var = variables.add($identifier.text, $type.t, constant);
	}
	(
		'=' expression
		{
			assigned = true;

			Assignment assignment = new Assignment(new VariableStore($var), $expression.value);
			scope.add(assignment);
		}
	) ';'
	{
		if (constant && !assigned) log.error($identifier, "Constant variables must be assigned an initial value");
	}
	;
	
returnStatement: 
	'return' expression ';'
	{
		ReturnStatement rtrn = new ReturnStatement($expression.value);
		scope.add(rtrn);
	}
	;
	
forStatement:
	'for' '(' 'int' iter1=ID '=' lower=INTEGER ';' iter2=ID '<' upper=INTEGER ';' iter3=ID '++' ')'
	{
		Variable iterator = variables.add($iter1.text, tInt, false);
		
		Variable test1 = variables.get($iter2.text);
		if (test1 == null) log.error($iter2, "Unknown variable '" + $iter2.text + "'");
		
		Variable test2 = variables.get($iter3.text);
		if (test2 == null) log.error($iter3, "Unknown variable '" + $iter3.text + "'");
		
		if (test1 != iterator) log.error($iter2, "The condition of the for loop must use the same variable as the initialiser");
		if (test2 != iterator) log.error($iter3, "The next statement of the for loop must use the same variable as the initialiser");
		
		scope.pushScope(new Loop($upper.int - $lower.int));
	}
	(block | statement)
	{
		scope.popScope();
	}
	;

assignment:
	ID
	{
		Variable var = variables.get($ID.text);
		if (var == null) 
			log.error($ID, "Variable '" + $ID.text + "' does not exist");
		else if (var.constant)
			log.error($ID, "Can not assign to a constant variable");
	}
	SWIZZLE? OP=('='|'+='|'-='|'*='|'/=')
	expression ';'
	{
		Swizzle swizzle = ($SWIZZLE == null ? null : new Swizzle(var.type, $SWIZZLE.text.substring(1)));
		String op = $OP.text;
		Value exprValue = $expression.value;
		VariableStore outVar = (swizzle == null ? new VariableStore(var) : new VariableStore(var, swizzle));
		
		if (!op.equals("=")) {
			VariableLoad varLoad = (swizzle == null ? new VariableLoad(var) : new VariableLoad(var, swizzle));
			
			if (op.equals("+="))
				exprValue = new BinaryOp(varLoad.type, "ADD", exprValue, varLoad);
			else if (op.equals("-="))
				exprValue = new BinaryOp(varLoad.type, "SUB", exprValue, varLoad);
			else if (op.equals("*="))
				exprValue = new BinaryOp(varLoad.type, "MUL", exprValue, varLoad);
			else if (op.equals("/="))
				exprValue = new BinaryOp(varLoad.type, "DIV", exprValue, varLoad);
		}
		
		Assignment assignment = new Assignment(outVar, exprValue);
		scope.add(assignment);
						
		if (exprValue.type.size == 1 && outVar.type.size > 1) {
			exprValue = new Value(new Type(outVar.type.size, exprValue.type.integer));
		}
	
		if (var != null) {
			if (!exprValue.isCompatible(outVar)) {
				log.error($ID, "Trying to assign a '" + exprValue + "' value to the variable '" + $ID.text + "' of type '" + outVar.type + "'");
			}
		}
	}
	;

expression returns [Value value]:
	FIRST=expression OP='+' term {$value = typeHelper.writeBinaryOp($OP, "ADD", $FIRST.value, $term.value);}
	| FIRST=expression OP='-' term {$value = typeHelper.writeBinaryOp($OP, "SUB", $FIRST.value, $term.value);}
	| term {$value = $term.value;}
	;

term returns [Value value]:
	FIRST=term OP='*' factor {$value = typeHelper.writeBinaryOp($OP, "MUL", $FIRST.value, $factor.value);}
	| FIRST=term OP='/' factor {$value = typeHelper.writeBinaryOp($OP, "DIV", $FIRST.value, $factor.value);}
	| factor {$value = $factor.value;}
	;

factor returns [Value value]:
	(
		atom {$value = $atom.value;}
		| OP='-' atom {$value = typeHelper.writeUnaryOp($OP, "NEG", $atom.value);}
	)
	;

atom returns [Value value]:
	(
		(
			'(' expression ')' {$value = $expression.value;}
			| construction {$value = $construction.value;}
			| builtInCall {$value = $builtInCall.value;}
			| functionCall {$value = $functionCall.value;}
		)
		(
			SWIZZLE
			{
				Swizzle swizzle = new Swizzle($atom.value.type, $SWIZZLE.text.substring(1));
				$value = new SwizzleValue($value, swizzle);
			}
		)?
	)
	| literal {$value = $literal.value;}
	| ID 
	{
		Variable var = variables.get($ID.text);
		Swizzle swizzle = null;
	}
	(
		SWIZZLE {if (var != null) swizzle = new Swizzle(var.type, $SWIZZLE.text.substring(1));}
	)?
	{
		if (var != null) {			
			if (swizzle == null)
				$value = new VariableLoad(var);
			else
				$value = new VariableLoad(var, swizzle);
		} else {
			$value = new Value(tError);
			log.error($ID, "Variable '" + $ID.text + "' does not exist");
		}
	}
	;
	
construction returns [Value value]:
	type '(' args+=expression (',' args+=expression)* ')' 
	{
		ArrayList<Value> inputs = new ArrayList<Value>();
		for (ExpressionContext exp : $args) inputs.add(exp.value);
		$value = new Construction($type.t, inputs);
	}
	;

builtInCall returns [Value value]:
	FUN='sin' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "SIN", $a.value);}
	| FUN='cos' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "COS", $a.value);}
	| FUN='sqrt' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "SQRT", $a.value);}
	| FUN='abs' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "ABS", $a.value);}
	| FUN='exp' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "EXP", $a.value);}
	| FUN='mod' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, "MOD", $a.value, $b.value);}
	| FUN='min' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, "MIN", $a.value, $b.value);}
	| FUN='max' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, "MAX", $a.value, $b.value);}
	| FUN='atan' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, "ATAN", $a.value, $b.value);}
	| FUN='pow' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, "POW", $a.value, $b.value);}
	| FUN='mix' '(' a=expression ',' b=expression ',' c=expression ')' 
	{
		$value = typeHelper.writeTernaryOpAny($FUN, "MIX", $a.value, $b.value, $c.value);
	}
	| FUN='clamp' '(' a=expression ',' b=expression ',' c=expression ')' 
	{
		$value = typeHelper.writeTernaryOpTwoSingle($FUN, "CLAMP", $a.value, $b.value, $c.value);
	}	
	| FUN='smoothstep' '(' a=expression ',' b=expression ',' c=expression ')' 
	{
		$value = typeHelper.writeTernaryOp($FUN, "SMOOTHSTEP", $a.value, $b.value, $c.value);
	}
	| FUN='step' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, "STEP", $a.value, $b.value);}
	| FUN='length' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "LEN", tFloat, $a.value);}
	| FUN='normalize' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "NORM", $a.value);}
	| FUN='dot' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeUnaryOp($FUN, "DP", $a.value);}
	;

functionCall returns [Value value]:
	ID 
	{
		System.out.println($ID.text);
		Function func = functions.get($ID.text);
		if (func == null) {
			log.error($ID, "Function '" + $ID.text + "' does not exist");
		}
	}
	'(' args+=expression? (',' args+=expression)* ')'
	{
		if (func != null) {
			ArrayList<Value> inputs = new ArrayList<Value>();
			for (ExpressionContext exp : $args) inputs.add(exp.value);
			$value = new FunctionCall(func, inputs);
		}
		else
			$value = new Value(tError);
	}
	;

literal returns [Value value]:
	INTEGER {$value = new Value(tInt, Integer.parseInt($INTEGER.text));}
	| FLOAT {$value = new Value(tFloat, Float.parseFloat($FLOAT.text));}
	;

type returns [Type t]:
	'float' {$t = tFloat;}
	| 'int' {$t = tInt;}
	| 'vec2' {$t = tVec2;}
	| 'vec3' {$t = tVec3;}
	| 'vec4' {$t = tVec4;}
	| 'void' {$t = tVoid;}
	;

SWIZZLE : '.' ([xyzw]+ | [rgba]+ | [stpq]+);

INTEGER : [0-9]+;
FLOAT : [0-9]* ([0-9] '.' | '.' [0-9]) [0-9]*;

ID : [A-Za-z][A-Za-z0-9_]* ;

STRING :
	'"' ( ESCSEQ | ~('\\'|'"') )* '"'
    ;

fragment ESCSEQ :
	'\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
    ;

WS : 
	[ \r\t\u000C\n]+ -> channel(HIDDEN)
    ;

COMMENT :
	'/*' .*? '*/' -> channel(HIDDEN)
    ;

LINECOMMENT :
	'//' ~[\r\n]* '\r'? '\n' -> channel(HIDDEN)
    ;