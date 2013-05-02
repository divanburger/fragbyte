grammar GLSL;

@header {
import java.util.Stack;

import whitesquare.glslcross.bytecode.Bytecode;
}

@members {
private BytecodeWriter writer;
private Functions functions = new Functions();
private Variables variables = new Variables();
private Types types = new Types();
private LogWriter log = new LogWriter();
private TypeHelper typeHelper = new TypeHelper();
private Type tInt;
private Type tFloat;
private Type tVec2;
private Type tVec3;
private Type tVec4;
private Type tVoid;

public void setBytecodeWriter(BytecodeWriter writer) {
	this.writer = writer;
	typeHelper.setWriters(writer, log);
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
		variables.add("__tempf", tVec4, false);
	}
	(function|varDeclaration)* EOF
	{
		writer.getProgram().setMaxSlots(variables.size());
	}
	;

function:
	type ID
	{
		writer.write(Bytecode.FUNC, $ID.text);
		Stack<Variable> parms = new Stack<Variable>();
	} 
	'(' ((parameter {parms.push($parameter.var);})? (',' parameter {parms.push($parameter.var);})* | 'void') ')' 
	{
		while (!parms.empty()) writer.store(parms.pop());
	
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
		{writer.store($var);}
	) ';'
	;
	
returnStatement: 
	'return' expression ';'
	{writer.write(Bytecode.RETURN);}
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
		Swizzle swizzle = null;
		Value outValue = var;
				
		if ($SWIZZLE != null) {
			swizzle = new Swizzle(var.type, $SWIZZLE.text.substring(1));
			outValue = swizzle.getValue();
		}
		
		Value exprValue = $expression.value;
		if (exprValue.type.size == 1 && outValue.type.size > 1) {
			writer.writeWideOp(Bytecode.DUPS, outValue.type.size - 1);
			exprValue = new Value(new Type(var.type.size, exprValue.type.integer));
		}
	
		if (var != null) {
			if (!exprValue.isCompatible(outValue)) {
				log.error($ID, "Trying to assign a '" + exprValue + "' value to the variable '" + $ID.text + "' of type '" + outValue.type + "'");
			}
			
			if (!$OP.text.equals("="))
			{			
				writer.load(var);
				if (swizzle != null) swizzle.writeShift(writer, variables.get("__tempf"));
			}
		
			if ($OP.text.equals("+="))
				typeHelper.writeBinaryOp($ID, Bytecode.ADD, outValue, exprValue);
			else if ($OP.text.equals("-="))
				typeHelper.writeBinaryOp($ID, Bytecode.SUB, outValue, exprValue);
			else if ($OP.text.equals("*="))
				typeHelper.writeBinaryOp($ID, Bytecode.MUL, outValue, exprValue);
			else if ($OP.text.equals("/="))
				typeHelper.writeBinaryOp($ID, Bytecode.DIV, outValue, exprValue);
			
			if (swizzle == null)
				writer.store(var);
			else
				swizzle.writeStore(writer, var);
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
		| '-' atom {$value = $atom.value; writer.writeWideOp(Bytecode.NEG, $value);}
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
				swizzle.writeShift(writer, variables.get("__tempf"));
				$value = swizzle.getValue();
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
			if (swizzle == null) {
				writer.load(var);
				$value = new Value(var.type);
			} else {
				swizzle.writeLoad(writer, var);
				$value = swizzle.getValue();
			}
		} else {
			$value = new Value(tVoid);
			log.error($ID, "Variable '" + $ID.text + "' does not exist");
		}
	}
	;
	
construction returns [Value value]:
	type '(' expression (',' expression)* ')' {$value = new Value($type.t);}
	;

builtInCall returns [Value value]:
	'sin' '(' expression ')' {$value = $expression.value; writer.writeWideOp(Bytecode.SIN, $value);}
	| 'cos' '(' expression ')' {$value = $expression.value; writer.writeWideOp(Bytecode.COS, $value);}
	| 'sqrt' '(' expression ')' {$value = $expression.value; writer.writeWideOp(Bytecode.SQRT, $value);}
	| 'abs' '(' expression ')' {$value = $expression.value; writer.writeWideOp(Bytecode.ABS, $value);}
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
	| 'length' '(' expression ')' 
	{
		$value = new Value(tFloat, $expression.value.constant);
		if ($expression.value.type.size > 1) writer.writeWideOp(Bytecode.LEN, $expression.value);
	}
	| 'normalize' '(' expression ')' {$value = $expression.value; writer.writeWideOp(Bytecode.NORM, $value);}
	| 'dot' '(' a=expression ',' b=expression ')' {$value = $expression.value; writer.writeWideOp(Bytecode.DP, $value);}
	;

functionCall returns [Value value]:
	ID 
	{
		Function func = functions.get($ID.text);
		if (func == null) {
			log.error($ID, "Function '" + $ID.text + "' does not exist");
		}
	}
	'(' expression? (',' expression)* ')'
	{
		$value = new Value(func.returnType);
		writer.write(Bytecode.CALL, $ID.text);
	}
	;

literal returns [Value value]:
	INTEGER {writer.write(Bytecode.LDC, Integer.parseInt($INTEGER.text)); $value = new Value(tInt, true);}
	| FLOAT {writer.write(Bytecode.LDC, Float.parseFloat($FLOAT.text)); $value = new Value(tFloat, true);}
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