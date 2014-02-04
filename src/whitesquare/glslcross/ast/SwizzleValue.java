package whitesquare.glslcross.ast;

public class SwizzleValue extends Value {
	public Value input;
	public Swizzle swizzle;
	
	public SwizzleValue(Value input, Swizzle swizzle) {
		super(swizzle.getType());
		
		this.input = input;
		this.swizzle = swizzle;
	}
	
	public SwizzleValue(Value input, String swizzle) {
		this(input, new Swizzle(input.type, swizzle));
	}

	@Override
	public void visit(ASTVisitor visitor) {
		input.visit(visitor);
		visitor.visitSwizzleValue(this);
	}
	
	@Override
	public String toString() {
		return "(" + input.toString() + ")" + swizzle.toString();
	}
}
