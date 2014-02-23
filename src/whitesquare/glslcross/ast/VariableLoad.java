package whitesquare.glslcross.ast;

public class VariableLoad extends Value {
	public Variable variable;
	public Swizzle swizzle = null;
	
	public VariableLoad(Variable variable) {
		super(variable.type, variable.constant);
		this.variable = variable;
	}
	
	public VariableLoad(Variable variable, Swizzle swizzle) {
		super(swizzle.getType(), variable.constant);
		this.variable = variable;
		this.swizzle = swizzle;
	}
	
	@Override
	public void print(String indent) {
		System.out.print(indent + "[var] " + variable.name);
		if (swizzle != null) System.out.println(" - " + swizzle.getSwizzleString());
		System.out.println();
	}

	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitVariableLoad(this);
	}
	
	@Override
	public String toString() {
		return variable.toString() + (swizzle == null ? "" : swizzle.toString());
	}
}
