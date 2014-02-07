package whitesquare.glslcross.ast;

public interface ASTVisitor {
	public void visitAssignment(Assignment assignment);
	public void visitBinaryOpMid(BinaryOp op);
	public void visitBinaryOpEnd(BinaryOp op);
	public void visitBlockStart(Block block);
	public void visitBlockEnd(Block block);
	public void visitConstruction(Construction construction);
	public void visitFunctionBegin(Function func);
	public void visitFunctionCall(FunctionCall call);
	public void visitFunctionEnd(Function func);
	public void visitFunctionMid(Function func);
	public void visitLoopBegin(Loop loop);
	public void visitLoopEnd(Loop loop);
	public void visitParameter(Parameter parameter);
	public void visitReturnStatement(ReturnStatement rtrn);
	public void visitSwizzleValue(SwizzleValue swizzleValue);
	public void visitTernaryOpAfterFirst(TernaryOp op);
	public void visitTernaryOpAfterSecond(TernaryOp op);
	public void visitTernaryOpEnd(TernaryOp op);
	public void visitUnaryOp(UnaryOp op);
	public void visitUnitStart(Unit unit);
	public void visitUnitEnd(Unit unit);
	public void visitValue(Value value);
	public void visitVariableStore(VariableStore value);
	public void visitVariableLoad(VariableLoad value);
}
