package whitesquare.glslcross.glslcompiler;

import whitesquare.glslcross.ast.ASTVisitor;
import whitesquare.glslcross.ast.Assignment;
import whitesquare.glslcross.ast.BinaryOp;
import whitesquare.glslcross.ast.Construction;
import whitesquare.glslcross.ast.FunctionCall;
import whitesquare.glslcross.ast.ReturnStatement;
import whitesquare.glslcross.ast.SwizzleValue;
import whitesquare.glslcross.ast.TernaryOp;
import whitesquare.glslcross.ast.Type;
import whitesquare.glslcross.ast.UnaryOp;
import whitesquare.glslcross.ast.Value;
import whitesquare.glslcross.ast.Variable;
import whitesquare.glslcross.ast.VariableLoad;
import whitesquare.glslcross.ast.VariableStore;
import whitesquare.glslcross.bytecode.Bytecode;

public class BytecodeVisitor extends ASTVisitor {
	private LogWriter log;
	private BytecodeWriter writer;
	private Variable tempVar;
	
	public BytecodeVisitor(BytecodeWriter writer, LogWriter log, Variable tempVar) {
		this.writer = writer;
		this.log = log;
	}
	
	@Override
	public void visitAssignment(Assignment assignment) {
		if (assignment.value.type.size == 1 && assignment.dest.type.size > 1) {
			writer.writeWideOp(Bytecode.DUPS, assignment.dest.type.size - 1);
		}
	}

	@Override
	public void visitBinaryOp(BinaryOp op) {
		Type a = op.left.type, b = op.right.type;
		if (a.size != b.size && b.size == 1) writer.writeWideOp(Bytecode.DUPS, a.size - b.size);
		writer.writeWideOp(Bytecode.valueOf(op.op), op.type.size);
	}

	@Override
	public void visitConstruction(Construction construction) {
	}

	@Override
	public void visitFunctionCall(FunctionCall call) {
		writer.write(Bytecode.CALL, call.function.name);
	}

	@Override
	public void visitReturnStatement(ReturnStatement rtrn) {
		writer.write(Bytecode.RETURN);
	}

	@Override
	public void visitSwizzleValue(SwizzleValue swizzleValue) {
		writer.shift(swizzleValue.swizzle, tempVar);
	}

	@Override
	public void visitTernaryOp(TernaryOp op) {
		Type a = op.mid.type, b = op.right.type;
		if (a.size != b.size && b.size == 1) writer.writeWideOp(Bytecode.DUPS, a.size - b.size);
		writer.writeWideOp(Bytecode.valueOf(op.op), op.type.size);
	}

	@Override
	public void visitUnaryOp(UnaryOp op) {
		writer.writeWideOp(Bytecode.valueOf(op.op), op.type.size);
	}

	@Override
	public void visitValue(Value value) {
		if (!value.constant) {
			System.out.println("Value not const!!! " + value);
			return;
		}
		
		if (value.type.integer)
			writer.write(Bytecode.LDC, value.intValue);
		else
			writer.write(Bytecode.LDC, value.floatValue);
	}

	@Override
	public void visitVariableStore(VariableStore value) {
		if (value.swizzle == null)
			writer.store(value.variable);
		else
			writer.store(value.variable, value.swizzle);
	}

	@Override
	public void visitVariableLoad(VariableLoad value) {
		if (value.swizzle == null)
			writer.load(value.variable);
		else
			writer.load(value.variable, value.swizzle);
	}
}
