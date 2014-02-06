package whitesquare.glslcross.ast;

public class Loop extends Scope {
	public int iterations;
	
	public Loop(int iterations) {
		this.iterations = iterations;
	}
	
	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitLoopBegin(this);
		for (Node node : nodes) node.visit(visitor);
		visitor.visitLoopEnd(this);
	}
}
