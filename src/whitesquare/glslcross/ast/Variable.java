package whitesquare.glslcross.ast;

public class Variable extends Value {
	public int slot;
	
	public Variable(int slot, Type type, boolean constant) {
		super(type, constant);
		this.slot = slot;
	}
	
	public Variable(int slot, Type type) {
		this(slot, type, false);
	}

	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitVariable(this);
	}
	
	@Override
	public String toString() {
		String str = "<" + type.toString() + "@" + slot;
		if (constant) str += " const";
		return str + ">";
	}
}
