package whitesquare.glslcross.ast.optimizers;

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
import whitesquare.glslcross.ast.Type;
import whitesquare.glslcross.ast.UnaryOp;
import whitesquare.glslcross.ast.Unit;
import whitesquare.glslcross.ast.Value;
import whitesquare.glslcross.ast.VariableLoad;
import whitesquare.glslcross.ast.VariableStore;

public class ConstantFoldingOptimizer implements ASTOptimizer, ASTVisitor {

	private Type intType;
	private Type floatType;
	private boolean changes;
	
	public ConstantFoldingOptimizer(Type intType, Type floatType) {
		this.intType = intType;
		this.floatType = floatType;
	}
	
	@Override
	public boolean optimize(Node ast) {
		changes = false;
		ast.visit(this);				
		return changes;
	}

	public Value foldConstants(Value input) {
		if (input instanceof BinaryOp) {
			BinaryOp op = (BinaryOp)input;
			
			System.out.println("Check Op: " + op.op + " ~ " + op.left + ", " + op.right);
			
			if (op.op.equals("DIV") && op.right.constant && op.right.type.size == 1 && !op.right.type.integer) {
				System.out.println("Inverted divide");
				
				op.right.floatValue = 1.0f / op.right.floatValue;
				op.op = "MUL";
			} else if (op.left.constant && op.left.type.size == 1 && op.right.constant && op.right.type.size == 1) {
				double leftValue = op.left.type.integer ? op.left.intValue : op.left.floatValue;
				double rightValue = op.right.type.integer ? op.right.intValue : op.right.floatValue;
				boolean bothInteger = op.left.type.integer && op.right.type.integer;
				
				System.out.println("Fold constants");
				
				boolean hasChange = true;
				switch (op.op) {
					case "ADD": return bothInteger ? new Value(intType, (int)(leftValue + rightValue)) : new Value(floatType, (float)(leftValue + rightValue));
					case "SUB": return bothInteger ? new Value(intType, (int)(leftValue - rightValue)) : new Value(floatType, (float)(leftValue - rightValue));
					case "MUL": return bothInteger ? new Value(intType, (int)(leftValue * rightValue)) : new Value(floatType, (float)(leftValue * rightValue));
					case "DIV": return bothInteger ? new Value(intType, (int)(leftValue / rightValue)) : new Value(floatType, (float)(leftValue / rightValue));
					default: hasChange = false;
				}
				
				changes |= hasChange;
			} else if ((op.left.constant || op.right.constant) && op.left.type.size == 1 && op.right.type.size == 1) {
				Value left = op.left;
				Value right = op.right;
				
				if (op.op.equals("MUL")) {
					if (left.constant && (left.type.integer ? left.intValue == 1 : left.floatValue == 1.0)) {
						System.out.println("MUL 1");
						changes = true;
						return right;
					} else if (right.constant && (right.type.integer ? right.intValue == 1 : right.floatValue == 1.0)) {
						System.out.println("MUL 1");
						changes = true;
						return left;
					}
				} else if (op.op.equals("ADD")) {
					if (left.constant && (left.type.integer ? left.intValue == 0 : left.floatValue == 0.0)) {
						System.out.println("ADD 0");
						changes = true;
						return right;
					} else if (right.constant && (right.type.integer ? right.intValue == 0 : right.floatValue == 0.0)) {
						System.out.println("ADD 0");
						changes = true;
						return left;
					}
				}
			}
		}
		
		return input;
	}
	
	@Override
	public void visitAssignment(Assignment assignment) {
		assignment.value = foldConstants(assignment.value);
	}

	@Override
	public void visitBinaryOpBegin(BinaryOp op) {
		op.left = foldConstants(op.left);
		op.right = foldConstants(op.right);
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
	}

	@Override
	public void visitTernaryOpAfterSecond(TernaryOp op) {
	}

	@Override
	public void visitTernaryOpEnd(TernaryOp op) {
	}

	@Override
	public void visitUnaryOp(UnaryOp op) {
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
