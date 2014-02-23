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
	public void print(String indent) {
		System.out.println(indent + op);
		left.print(indent + "\t");
		mid.print(indent + "\t");
		right.print(indent + "\t");
	}
	
	@Override
	public void visit(ASTVisitor visitor) {
		left.visit(visitor);
		visitor.visitTernaryOpAfterFirst(this);
		mid.visit(visitor);
		visitor.visitTernaryOpAfterSecond(this);
		right.visit(visitor);
		visitor.visitTernaryOpEnd(this);
	}
	
	@Override
	public String toString() {
		return "(" + op + " " + left.toString() + " " + mid.toString() + " " + right.toString() + ")";
	}
}
