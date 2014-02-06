package whitesquare.glslcross.ast;

public class Parameter extends Node {
	public Variable variable;
	
	public Parameter(Variable variable) {
		this.variable = variable;
	}

	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitParameter(this);
	}
}
