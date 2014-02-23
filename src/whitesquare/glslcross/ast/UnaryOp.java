package whitesquare.glslcross.ast;

public class UnaryOp extends Value {
	public String op;
	public Value input;

	public UnaryOp(Type type, String op, Value input) {
		super(type);
		this.op = op;
		this.input = input;
	}
	
	@Override
	public void print(String indent) {
		System.out.println(indent + op);
		input.print(indent + "\t");
	}

	@Override
	public void visit(ASTVisitor visitor) {
		input.visit(visitor);
		visitor.visitUnaryOp(this);
	}
	
	@Override
	public String toString() {
		return "(" + op + " " + input.toString() + ")";
	}
}
