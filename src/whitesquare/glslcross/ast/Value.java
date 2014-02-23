package whitesquare.glslcross.ast;

public class Value extends Node {
	public boolean constant;
	public Type type;
	public int intValue;
	public float floatValue;
	
	public Value(Type type, boolean constant) {
		this.type = type;
		this.constant = constant;
	}
	
	public Value(Type type, int value) {
		this.type = type;
		this.constant = true;
		this.intValue = value;
	}
	
	public Value(Type type, float value) {
		this.type = type;
		this.constant = true;
		this.floatValue = value;
	}
	
	public Value(Type type) {
		this.type = type;
	}
		
	public boolean isCompatible(Value other) {
		return type.isCompatible(other.type);
	}
	
	@Override
	public void print(String indent) {
		System.out.println(indent + toString());
	}

	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitValue(this);
	}
	
	@Override
	public String toString() {
		String str = "";
		if (constant) str += (type.integer ? intValue : floatValue) + " : ";
		return str + type.toString();
	}
}
