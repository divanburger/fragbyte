package whitesquare.glslcross.ast;

public class TernaryOp extends Value {
	public String op;
	public Value left;
	public Value mid;
	public Value right;

	public TernaryOp(Type type, String op, Value left, Value mid, Value right) {
		super(type);
		this.op = op;
		this.left = left;
		this.mid = mid;
		this.right = right;
	}

	@Override
	public void visit(ASTVisitor visitor) {
		left.visit(visitor);
		mid.visit(visitor);
		right.visit(visitor);
		visitor.visitTernaryOp(this);
	}
	
	@Override
	public String toString() {
		return "(" + op + " " + left.toString() + " " + mid.toString() + " " + right.toString() + ")";
	}
}
