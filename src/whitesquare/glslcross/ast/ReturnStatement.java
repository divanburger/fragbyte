package whitesquare.glslcross.ast;

public class ReturnStatement extends Statement {
	public Value value;
	
	public ReturnStatement(Value value) {
		this.value = value;
	}
	
	@Override
	public void visit(ASTVisitor visitor) {
		value.visit(visitor);
		visitor.visitReturnStatement(this);
	}
}
