package whitesquare.glslcross.glslcompiler;

import org.antlr.v4.runtime.Token;

import whitesquare.glslcross.ast.BinaryOp;
import whitesquare.glslcross.ast.TernaryOp;
import whitesquare.glslcross.ast.Type;
import whitesquare.glslcross.ast.UnaryOp;
import whitesquare.glslcross.ast.Value;

class TypeHelper {
	private LogWriter log;
	
	public TypeHelper(LogWriter log) {
		this.log = log;
	}
	
	Value writeUnaryOp(Token token, String op, Type resultType, Value a) {
		if (a == null) {
			log.error(token, "One is null: " + op + " " + a);
			return null;
		}
		
		return new UnaryOp(resultType, op, a);
	}	
	
	Value writeUnaryOp(Token token, String op, Value a) {
		if (a == null) {
			log.error(token, "One is null: " + op + " " + a);
			return null;
		}
		
		return new UnaryOp(a.type, op, a);
	}
	
	Value writeBinaryOp(Token token, String op, Value a, Value b) {
		if (a == null || b == null) {
			log.error(token, "One is null: " + op + " " + a + " " + b);
			return null;
		}
		
		if (a.type.size == b.type.size || b.type.size == 1) return new BinaryOp(a.type, op, a, b);
		
		log.error(token, "'" + a + "' and '" + b + "' are incompatible (Binary Op)");
		return null;
	}
	
	Value writeTernaryOp(Token token, String op, Value a, Value b, Value c) {
		if (a == null || b == null || c== null) {
			log.error(token, "One is null: " + op + " " + a + " " + b + " " + c);
			return null;
		}
		
		if (a.type.size != b.type.size) {
			log.error(token, "'" + a + "' and '" + b + "' are incompatible (Ternary Op)");
			return null;
		}
		
		if (b.type.size == c.type.size || c.type.size == 1) return new TernaryOp(a.type, op, a, b, c);
		
		log.error(token, "'" + c + "' is incompatible (Ternary Op)");
		return null;
	}
}
