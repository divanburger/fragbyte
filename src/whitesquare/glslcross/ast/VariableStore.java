package whitesquare.glslcross.ast;

public class VariableStore extends Value {
	public Variable variable;
	public Swizzle swizzle = null;
	
	public VariableStore(Variable variable) {
		super(variable.type, variable.constant);
		this.variable = variable;
	}
	
	public VariableStore(Variable variable, Swizzle swizzle) {
		super(swizzle.getType(), variable.constant);
		this.variable = variable;
		this.swizzle = swizzle;
	}

	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitVariableStore(this);
	}
	
	@Override
	public String toString() {
		return variable.toString() + (swizzle == null ? "" : swizzle.toString());
	}
}
