package whitesquare.glslcross.glslcompiler;

import java.util.Stack;

import whitesquare.glslcross.ast.ASTVisitor;
import whitesquare.glslcross.ast.Assignment;
import whitesquare.glslcross.ast.BinaryOp;
import whitesquare.glslcross.ast.Block;
import whitesquare.glslcross.ast.Construction;
import whitesquare.glslcross.ast.Function;
import whitesquare.glslcross.ast.FunctionCall;
import whitesquare.glslcross.ast.Loop;
import whitesquare.glslcross.ast.Parameter;
import whitesquare.glslcross.ast.ReturnStatement;
import whitesquare.glslcross.ast.SwizzleValue;
import whitesquare.glslcross.ast.TernaryOp;
import whitesquare.glslcross.ast.Type;
import whitesquare.glslcross.ast.UnaryOp;
import whitesquare.glslcross.ast.Unit;
import whitesquare.glslcross.ast.Value;
import whitesquare.glslcross.ast.Variable;
import whitesquare.glslcross.ast.VariableLoad;
import whitesquare.glslcross.ast.VariableStore;
import whitesquare.glslcross.bytecode.Bytecode;

public class BytecodeVisitor implements ASTVisitor {
	private LogWriter log;
	private BytecodeWriter writer;
	private Variable tempVar;
	
	private Stack<Parameter> parameters = new Stack<>();
	
	public BytecodeVisitor(BytecodeWriter writer, LogWriter log, Variable tempVar) {
		this.writer = writer;
		this.log = log;
		this.tempVar = tempVar;
	}

	@Override
	public void visitAssignment(Assignment assignment) {
		if (assignment.value.type.size == 1 && assignment.dest.type.size > 1) {
			writer.writeWideOp(Bytecode.DUPS, assignment.dest.type.size - 1);
		}
	}
	
	@Override
	public void visitBinaryOpBegin(BinaryOp op) {
	}
	
	@Override
	public void visitBinaryOpMid(BinaryOp op) {
		Type a = op.left.type, b = op.right.type;
		if (a.size != b.size && a.size == 1) writer.writeWideOp(Bytecode.DUPS, b.size - a.size);
	}	

	@Override
	public void visitBinaryOpEnd(BinaryOp op) {
		Type a = op.left.type, b = op.right.type;
		if (a.size != b.size && b.size == 1) writer.writeWideOp(Bytecode.DUPS, a.size - b.size);
		int size = Math.max(a.size, b.size);
		writer.writeWideOp(Bytecode.valueOf(op.op), size);
	}

	@Override
	public void visitBlockStart(Block block) {		
	}

	@Override
	public void visitBlockEnd(Block block) {		
	}

	@Override
	public void visitConstruction(Construction construction) {
		if (construction.arguments.size() == 1) {
			Type argType = construction.arguments.get(0).type;
			if (construction.type.size > argType.size)
				writer.writeWideOp(Bytecode.DUPS, construction.type.size - argType.size);
		}
	}

	@Override
	public void visitFunctionCall(FunctionCall call) {
		writer.write(Bytecode.CALL, call.function.name);
	}
	
	@Override
	public void visitFunctionBegin(Function func) {
		writer.write(Bytecode.FUNC, func.name, func.inputSize, func.outputSize);
	}

	@Override
	public void visitFunctionMid(Function func) {
		while (!parameters.isEmpty()) {
			Parameter parm = parameters.pop();
			writer.store(parm.variable);
		}
	}
	
	@Override
	public void visitFunctionEnd(Function func) {
		writer.write(Bytecode.RETURN);
	}
	
	@Override
	public void visitLoopBegin(Loop loop) {
		writer.write(Bytecode.REPEAT, loop.iterations);
	}
	
	@Override
	public void visitLoopEnd(Loop loop) {
		writer.write(Bytecode.ENDREPEAT);
	}

	@Override
	public void visitParameter(Parameter parameter) {
		parameters.push(parameter);
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
	public void visitTernaryOpAfterFirst(TernaryOp op) {
		Type a = op.left.type, b = op.mid.type, c = op.right.type;
		int maxSize = Math.max(Math.max(a.size, b.size), c.size);
		
		if (a.size != maxSize && a.size == 1) writer.writeWideOp(Bytecode.DUPS, maxSize - a.size);
	}
	@Override
	public void visitTernaryOpAfterSecond(TernaryOp op) {
		Type a = op.left.type, b = op.mid.type, c = op.right.type;
		int maxSize = Math.max(Math.max(a.size, b.size), c.size);
		
		if (b.size != maxSize && b.size == 1) writer.writeWideOp(Bytecode.DUPS, maxSize - b.size);
	}
	
	@Override
	public void visitTernaryOpEnd(TernaryOp op) {
		Type a = op.left.type, b = op.mid.type, c = op.right.type;
		int maxSize = Math.max(Math.max(a.size, b.size), c.size);

		if (c.size != maxSize && c.size == 1) writer.writeWideOp(Bytecode.DUPS, maxSize - c.size);
		writer.writeWideOp(Bytecode.valueOf(op.op), op.type.size);
	}

	@Override
	public void visitUnaryOp(UnaryOp op) {
		writer.writeWideOp(Bytecode.valueOf(op.op), op.input.type.size);
	}

	@Override
	public void visitUnitStart(Unit unit) {
		for (Variable input : unit.inputs)
			writer.input(input.name, input);
		
		for (Variable output : unit.outputs)
			writer.output(output.name, output);
	}

	@Override
	public void visitUnitEnd(Unit unit) {		
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
