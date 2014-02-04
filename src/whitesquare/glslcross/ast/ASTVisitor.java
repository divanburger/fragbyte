package whitesquare.glslcross.ast;

public abstract class ASTVisitor {
	public void visitAssignment(Assignment assignment) {}
	public void visitBinaryOp(BinaryOp op) {}
	public void visitConstruction(Construction construction) {}
	public void visitFunctionCall(FunctionCall call) {}
	public void visitReturnStatement(ReturnStatement rtrn) {}
	public void visitSwizzleValue(SwizzleValue swizzleValue) {}
	public void visitTernaryOp(TernaryOp op) {}
	public void visitUnaryOp(UnaryOp op) {}
	public void visitValue(Value value) {}
	public void visitVariableStore(VariableStore value) {}
	public void visitVariableLoad(VariableLoad value) {}
}
