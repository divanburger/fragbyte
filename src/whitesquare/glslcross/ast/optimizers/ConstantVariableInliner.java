package whitesquare.glslcross.ast.optimizers;

import java.util.HashMap;
import java.util.Map;

import whitesquare.glslcross.ast.ASTVisitor;
import whitesquare.glslcross.ast.Assignment;
import whitesquare.glslcross.ast.BinaryOp;
import whitesquare.glslcross.ast.Block;
import whitesquare.glslcross.ast.Construction;
import whitesquare.glslcross.ast.Function;
import whitesquare.glslcross.ast.FunctionCall;
import whitesquare.glslcross.ast.Loop;
import whitesquare.glslcross.ast.Node;
import whitesquare.glslcross.ast.Parameter;
import whitesquare.glslcross.ast.ReturnStatement;
import whitesquare.glslcross.ast.SwizzleValue;
import whitesquare.glslcross.ast.TernaryOp;
import whitesquare.glslcross.ast.UnaryOp;
import whitesquare.glslcross.ast.Unit;
import whitesquare.glslcross.ast.Value;
import whitesquare.glslcross.ast.Variable;
import whitesquare.glslcross.ast.VariableLoad;
import whitesquare.glslcross.ast.VariableStore;

public class ConstantVariableInliner implements ASTOptimizer, ASTVisitor {

	private boolean changes;
	private Map<Variable, Value> constantVariables = new HashMap<>();
	
	@Override
	public boolean optimize(Node ast) {
		changes = false;
		ast.visit(this);
		return changes;
	}
	
	@Override
	public void visitAssignment(Assignment assignment) {
		assignment.value = checkInline(assignment.value);
		
		if (assignment.dest.swizzle == null && assignment.dest.variable.constant) {
			constantVariables.put(assignment.dest.variable, assignment.value);
		}
	}
	
	public Value checkInline(Value input) {
		if (input instanceof VariableLoad) {
			VariableLoad vl = (VariableLoad)input;
			if (vl.swizzle == null && vl.variable.constant) {
				Value constValue = constantVariables.get(vl.variable);
				if (constValue != null) return constValue;
			}
		}
		return input;
	}

	@Override
	public void visitBinaryOpBegin(BinaryOp op) {
		op.left = checkInline(op.left);
		op.right = checkInline(op.right);
	}

	@Override
	public void visitBinaryOpMid(BinaryOp op) {
	}

	@Override
	public void visitBinaryOpEnd(BinaryOp op) {
	}

	@Override
	public void visitBlockStart(Block block) {
	}

	@Override
	public void visitBlockEnd(Block block) {
	}

	@Override
	public void visitConstruction(Construction construction) {
	}

	@Override
	public void visitFunctionBegin(Function func) {
	}

	@Override
	public void visitFunctionCall(FunctionCall call) {
	}

	@Override
	public void visitFunctionEnd(Function func) {
	}

	@Override
	public void visitFunctionMid(Function func) {
	}

	@Override
	public void visitLoopBegin(Loop loop) {
	}

	@Override
	public void visitLoopEnd(Loop loop) {
	}

	@Override
	public void visitParameter(Parameter parameter) {
	}

	@Override
	public void visitReturnStatement(ReturnStatement rtrn) {
	}

	@Override
	public void visitSwizzleValue(SwizzleValue swizzleValue) {
	}

	@Override
	public void visitTernaryOpAfterFirst(TernaryOp op) {
		op.left = checkInline(op.left);
		op.mid = checkInline(op.mid);
		op.right = checkInline(op.right);
	}

	@Override
	public void visitTernaryOpAfterSecond(TernaryOp op) {
	}

	@Override
	public void visitTernaryOpEnd(TernaryOp op) {
	}

	@Override
	public void visitUnaryOp(UnaryOp op) {
		op.input = checkInline(op.input);
	}

	@Override
	public void visitUnitStart(Unit unit) {
	}

	@Override
	public void visitUnitEnd(Unit unit) {
	}

	@Override
	public void visitValue(Value value) {
	}

	@Override
	public void visitVariableStore(VariableStore value) {
	}

	@Override
	public void visitVariableLoad(VariableLoad value) {
	}
}
