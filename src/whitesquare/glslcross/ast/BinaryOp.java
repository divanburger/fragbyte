package whitesquare.glslcross.ast;

public class BinaryOp extends Value {
	public String op;
	public Value left;
	public Value right;

	public BinaryOp(Type type, String op, Value left, Value right) {
		super(type);
		this.op = op;
		this.left = left;
		this.right = right;
	}

	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitBinaryOpBegin(this);
		left.visit(visitor);
		visitor.visitBinaryOpMid(this);
		right.visit(visitor);
		visitor.visitBinaryOpEnd(this);
	}
	
	@Override
	public String toString() {
		return "(" + op + " " + left.toString() + " " + right.toString() + ")";
	}
}
