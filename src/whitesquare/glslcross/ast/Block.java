package whitesquare.glslcross.ast;

public class Block extends Scope {
	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitBlockStart(this);
		for (Node node : nodes) node.visit(visitor);
		visitor.visitBlockEnd(this);
	}
}
