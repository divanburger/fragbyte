package whitesquare.glslcross.ast;

public class Assignment extends Statement {
	public VariableStore dest;
	public Value value;
	
	public Assignment(VariableStore dest, Value value) {
		this.dest = dest;
		this.value = value;
	}
	
	@Override
	public void print(String indent) {
		System.out.println(indent + "[assign] " + dest.toString());
		value.print(indent + "\t");
	}

	@Override
	public void visit(ASTVisitor visitor) {
		value.visit(visitor);
		visitor.visitAssignment(this);
		dest.visit(visitor);
	}
	
	@Override
	public String toString() {
		return dest.toString() + " = " + value.toString();
	}
}
