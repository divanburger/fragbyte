package whitesquare.glslcross.bytecode;

public class Instruction {
	public enum Type {NONE, INTEGER, FLOAT, STRING};
	
	public Bytecode bytecode;
	public Type type;
	
	public int valueInt;
	public float valueFloat;
	public String valueString;
	
	public Instruction(Bytecode bytecode) {
		this.bytecode = bytecode;
		this.type = Type.NONE;
	}
	
	public Instruction(Bytecode bytecode, int value) {
		this.bytecode = bytecode;
		this.valueInt = value;
		this.type = Type.INTEGER;
	}
	
	public Instruction(Bytecode bytecode, float value) {
		this.bytecode = bytecode;
		this.valueFloat = value;
		this.type = Type.FLOAT;
	}
	
	public Instruction(Bytecode bytecode, String value) {
		this.bytecode = bytecode;
		this.valueString = value;
		this.type = Type.STRING;
	}
	
	public String toString() {
		String str = bytecode.name();
		switch (type) {
			case INTEGER: str += " " + valueInt; break;
			case FLOAT: str += " " + valueFloat; break;
			case STRING: str += " " + valueString; break;
			default: break;
		}
		return str;
	}
}
