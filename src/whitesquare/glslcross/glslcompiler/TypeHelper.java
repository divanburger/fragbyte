package whitesquare.glslcross.glslcompiler;

import org.antlr.v4.runtime.Token;

import whitesquare.glslcross.bytecode.Bytecode;

public class TypeHelper {
	private BytecodeWriter writer = null;
	private LogWriter log = null;
	
	public void setWriters(BytecodeWriter writer, LogWriter log) {
		this.writer = writer;
		this.log = log;
	}
	
	Value writeBinaryOp(Token token, Bytecode code, Value a, Value b) {
		if (a == null || b == null) {
			log.error(token, "One is null: " + code + " " + a + " " + b);
			return null;
		}
		
		if (a.type.size == b.type.size) {
			writer.writeWideOp(code, a);
			return new Value(a.type, a.constant && b.constant);
		}
		
		if (b.type.size == 1) {
			writer.writeWideOp(Bytecode.DUPS, a.type.size - b.type.size);
			writer.writeWideOp(code, a);
			return new Value(a.type, a.constant && b.constant);
		}
		
		log.error(token, "'" + a + "' and '" + b + "' are incompatible (Binary Op)");
		return null;
	}
	
	Value writeTernaryOp(Token token, Bytecode code, Value a, Value b, Value c) {
		if (a == null || b == null || c== null) {
			log.error(token, "One is null: " + code + " " + a + " " + b + " " + c);
			return null;
		}
		
		if (a.type.size != b.type.size) {
			log.error(token, "'" + a + "' and '" + b + "' are incompatible (Ternary Op)");
			return null;
		}
		
		if (b.type.size == c.type.size) {
			writer.writeWideOp(code, a);
			return new Value(a.type, a.constant && b.constant && c.constant);
		}
		
		if (c.type.size == 1) {
			writer.writeWideOp(Bytecode.DUPS, b.type.size - c.type.size);
			writer.writeWideOp(code, a);
			return new Value(a.type, a.constant && b.constant && c.constant);
		}
		
		log.error(token, "'" + c + "' is incompatible (Ternary Op)");
		return null;
	}
}
