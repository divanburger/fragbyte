package whitesquare.glslcross.glslcompiler;

import org.antlr.v4.runtime.Token;

import whitesquare.glslcross.ast.BinaryOp;
import whitesquare.glslcross.ast.TernaryOp;
import whitesquare.glslcross.ast.Type;
import whitesquare.glslcross.ast.UnaryOp;
import whitesquare.glslcross.ast.Value;

class TypeHelper {
	private LogWriter log;
	private Type errorType;
	private Type intType;
	private Type floatType;
	
	public TypeHelper(LogWriter log, Type errorType, Type intType, Type floatType) {
		this.log = log;
		this.errorType = errorType;
		this.intType = intType;
		this.floatType = floatType;
	}
	
	Value writeUnaryOp(Token token, String op, Type resultType, Value a) {
		if (a == null) {
			log.error(token, "One is null: " + op + " " + a);
			return new Value(errorType);
		}
		
		if (a.type == errorType) return new Value(errorType); // Ignore already handled errors
		
		return new UnaryOp(resultType, op, a);
	}	
	
	Value writeUnaryOp(Token token, String op, Value a) {
		if (a == null) {
			log.error(token, "One is null: " + op + " " + a);
			return new Value(errorType);
		}

		if (a.type == errorType) return new Value(errorType); // Ignore already handled errors
		
		return new UnaryOp(a.type, op, a);
	}
	
	Value writeBinaryOp(Token token, String op, Value a, Value b) {
		if (a == null || b == null) {
			log.error(token, "One is null: " + op + " " + a + " " + b);
			return new Value(errorType);
		}

		if (a.type == errorType || b.type == errorType) return new Value(errorType); // Ignore already handled errors
		
		if (op.equals("DP")) {
			if (a.type.size == b.type.size)
				return new BinaryOp(a.type.integer ? intType : floatType, op, a, b);
			else
				return new Value(errorType);
		}
		
		if (a.type.size == b.type.size || b.type.size == 1 || a.type.size == 1) 
			return new BinaryOp(a.type.size >= b.type.size ? a.type : b.type, op, a, b);
		
		log.error(token, "'" + a.type + "' and '" + b.type + "' are incompatible (" + op + ")");
		return new Value(errorType);
	}
	
	Value writeTernaryOp(Token token, String op, Value a, Value b, Value c) {
		if (a == null || b == null || c== null) {
			log.error(token, "One is null: " + op + " " + a + " " + b + " " + c);
			return new Value(errorType);
		}
		
		if (a.type == errorType || b.type == errorType || c.type == errorType) return new Value(errorType); // Ignore already handled errors
		
		if (a.type.size != b.type.size) {
			log.error(token, "First parameter of type '" + a.type + "' and the second parameter of type '" + b.type + "' are incompatible (" + op + ")");
			return new Value(errorType);
		}
		
		if (b.type.size == c.type.size || c.type.size == 1) return new TernaryOp(a.type, op, a, b, c);
		
		log.error(token, "'" + c.type + "' is incompatible (" + op + ")");
		return new Value(errorType);
	}
	
	Value writeTernaryOpAny(Token token, String op, Value a, Value b, Value c) {
		if (a == null || b == null || c== null) {
			log.error(token, "One is null: " + op + " " + a + " " + b + " " + c);
			return new Value(errorType);
		}
		
		if (a.type == errorType || b.type == errorType || c.type == errorType) return new Value(errorType); // Ignore already handled errors
		
		int maxSize = Math.max(Math.max(a.type.size, b.type.size), c.type.size);
		
		if ((a.type.size == maxSize || a.type.size == 1) && (b.type.size == maxSize || b.type.size == 1) && (c.type.size == maxSize || c.type.size == 1)) 
			return new TernaryOp(a.type, op, a, b, c);
		
		log.error(token, "'" + a.type + "', '" + b.type + "' and '" + c.type + "' are incompatible (" + op + ")");
		return new Value(errorType);
	}
	
	Value writeTernaryOpTwoSingle(Token token, String op, Value a, Value b, Value c) {
		if (a == null || b == null || c== null) {
			log.error(token, "One is null: " + op + " " + a + " " + b + " " + c);
			return new Value(errorType);
		}
		
		if (a.type == errorType || b.type == errorType || c.type == errorType) return new Value(errorType); // Ignore already handled errors
		
		if ((a.type.size == b.type.size || b.type.size == 1) && (a.type.size == c.type.size || c.type.size == 1)) return new TernaryOp(a.type, op, a, b, c);

		log.error(token, "'" + a.type + "', '" + b.type + "' and '" + c.type + "' are incompatible (" + op + ")");
		return new Value(errorType);
	}
}
