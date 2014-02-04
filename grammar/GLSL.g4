grammar GLSL;

@header {
import java.util.Stack;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.ast.*;
}

@members {
private BytecodeWriter writer;
private Functions functions = new Functions();
private Variables variables = new Variables();
private Types types = new Types();
private LogWriter log = new LogWriter();
private TypeHelper typeHelper = new TypeHelper(log);
private BytecodeVisitor visitor = null;
private Type tInt;
private Type tFloat;
private Type tVec2;
private Type tVec3;
private Type tVec4;
private Type tVoid;

public void setBytecodeWriter(BytecodeWriter writer) {
	this.writer = writer;
}
}

glsl: 
	{
		tInt = types.add("int", 1, true);
		tFloat = types.add("float", 1, false);
		tVec2 = types.add("vec2", 2, false);
		tVec3 = types.add("vec3", 3, false);
		tVec4 = types.add("vec4", 4, false);
		tVoid = types.add("void", 0, true);
			
		Variable fragColor = variables.add("gl_FragColor", tVec4, false);
		Variable fragCoord = variables.add("gl_FragCoord", tVec2, true);
				
		writer.output("gl_FragColor", fragColor);
		writer.input("gl_FragCoord", fragCoord);
	}
	(uniformDeclaration)*
	{
		Variable tempVar = variables.add("__tempf", tVec4, false);
		visitor = new BytecodeVisitor(writer, log, tempVar);
	}
	(function|varDeclaration)* EOF
	{
		writer.getProgram().setMaxSlots(variables.size());
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
		writer.write(Bytecode.FUNC, $ID.text, stackIn, $type.t.size);
		
		for (Variable var : parms) writer.store(var);
	
		functions.add($ID.text, $type.t);
	}
	block
	{writer.write(Bytecode.RETURN);}
	;

parameter returns [Variable var]: 
	type ID {$var = variables.add($ID.text, $type.t, false);}
	;

block: '{' statement* '}';

statement: 
	varDeclaration
	| forStatement
	| assignment
	| returnStatement;
	
uniformDeclaration returns [Variable var]:
	'uniform' type ID
	{
		$var = variables.add($ID.text, $type.t, true);
		writer.input($ID.text, $var);
	} ';'
	;
	
varDeclaration returns [Variable var] :
	{boolean constant = false;}
	('const' {constant = true;})? 
	type ID
	{
		$var = variables.add($ID.text, $type.t, constant);
	}
	(
		'=' expression
		{
			Assignment assignment = new Assignment(new VariableStore($var), $expression.value);
			System.out.println(assignment);
			assignment.visit(visitor);
		}
	) ';'
	;
	
returnStatement: 
	'return' expression ';'
	{
		ReturnStatement rtrn = new ReturnStatement($expression.value);
		System.out.println(rtrn);
		rtrn.visit(visitor);
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
		
		writer.write(Bytecode.REPEAT, $upper.int - $lower.int);
	}
	(block | statement)
	{
		writer.write(Bytecode.ENDREPEAT);
	}
	;

assignment:
	ID
	{
		Variable var = variables.get($ID.text);
		if (var == null) log.error($ID, "Variable '" + $ID.text + "' does not exist");
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
				exprValue = new BinaryOp(varLoad.type, Bytecode.ADD.name(), exprValue, varLoad);
			else if (op.equals("-="))
				exprValue = new BinaryOp(varLoad.type, Bytecode.SUB.name(), exprValue, varLoad);
			else if (op.equals("*="))
				exprValue = new BinaryOp(varLoad.type, Bytecode.MUL.name(), exprValue, varLoad);
			else if (op.equals("/="))
				exprValue = new BinaryOp(varLoad.type, Bytecode.DIV.name(), exprValue, varLoad);
		}
		
		Assignment assignment = new Assignment(outVar, exprValue);
		System.out.println(assignment);
		assignment.visit(visitor);
						
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
	FIRST=expression OP='+' term {$value = typeHelper.writeBinaryOp($OP, Bytecode.ADD, $FIRST.value, $term.value);}
	| FIRST=expression OP='-' term {$value = typeHelper.writeBinaryOp($OP, Bytecode.SUB, $FIRST.value, $term.value);}
	| term {$value = $term.value;}
	;

term returns [Value value]:
	FIRST=term OP='*' factor {$value = typeHelper.writeBinaryOp($OP, Bytecode.MUL, $FIRST.value, $factor.value);}
	| FIRST=term OP='/' factor {$value = typeHelper.writeBinaryOp($OP, Bytecode.DIV, $FIRST.value, $factor.value);}
	| factor {$value = $factor.value;}
	;

factor returns [Value value]:
	(
		atom {$value = $atom.value;}
		| OP='-' atom {$value = typeHelper.writeUnaryOp($OP, Bytecode.NEG, $atom.value);}
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
			$value = new Value(tVoid);
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
	FUN='sin' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.SIN, $a.value);}
	| FUN='cos' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.COS, $a.value);}
	| FUN='sqrt' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.SQRT, $a.value);}
	| FUN='abs' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.ABS, $a.value);}
	| FUN='mod' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, Bytecode.MOD, $a.value, $b.value);}
	| FUN='min' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, Bytecode.MIN, $a.value, $b.value);}
	| FUN='max' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, Bytecode.MAX, $a.value, $b.value);}
	| FUN='atan' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, Bytecode.ATAN, $a.value, $b.value);}
	| FUN='mix' '(' a=expression ',' b=expression ',' c=expression ')' 
	{
		$value = typeHelper.writeTernaryOp($FUN, Bytecode.MIX, $a.value, $b.value, $c.value);
	}
	| FUN='smoothstep' '(' a=expression ',' b=expression ',' c=expression ')' 
	{
		$value = typeHelper.writeTernaryOp($FUN, Bytecode.SMOOTHSTEP, $a.value, $b.value, $c.value);
	}
	| FUN='step' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeBinaryOp($FUN, Bytecode.STEP, $a.value, $b.value);}
	| FUN='length' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.LEN, $a.value);}
	| FUN='normalize' '(' a=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.NORM, $a.value);}
	| FUN='dot' '(' a=expression ',' b=expression ')' {$value = typeHelper.writeUnaryOp($FUN, Bytecode.DP, $a.value);}
	;

functionCall returns [Value value]:
	ID 
	{
		Function func = functions.get($ID.text);
		if (func == null) {
			log.error($ID, "Function '" + $ID.text + "' does not exist");
		}
	}
	'(' args+=expression? (',' args+=expression)* ')'
	{
		ArrayList<Value> inputs = new ArrayList<Value>();
		for (ExpressionContext exp : $args) inputs.add(exp.value);
		$value = new FunctionCall(func, inputs);
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
FLOAT : [0-9]+ '.' [0-9]* ;

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