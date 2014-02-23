package whitesquare.glslcross.ast;

public class Loop extends Scope {
	public int iterations;
	
	public Loop(int iterations) {
		this.iterations = iterations;
	}
	
	@Override
	public void print(String indent) {
		System.out.println(indent + "[loop] " + iterations);
		for (Node node : nodes) node.print(indent + "\t");
	}
	
	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitLoopBegin(this);
		for (Node node : nodes) node.visit(visitor);
		visitor.visitLoopEnd(this);
	}
}
