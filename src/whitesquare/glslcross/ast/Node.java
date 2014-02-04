package whitesquare.glslcross.ast;

public abstract class Node {
	public abstract void visit(ASTVisitor visitor); 
}
