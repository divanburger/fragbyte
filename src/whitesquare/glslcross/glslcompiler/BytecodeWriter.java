package whitesquare.glslcross.glslcompiler;

import whitesquare.glslcross.ast.Swizzle;
import whitesquare.glslcross.ast.Value;
import whitesquare.glslcross.ast.Variable;
import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

public class BytecodeWriter {
	private Program program;
		
	public BytecodeWriter() {
		program = new Program();
	}
	
	public Program getProgram() {
		return program;
	}
		
	public void write(Bytecode code) {
		if (code.ops > 0) throw new Error("Trying to write '" + code.name() + "' that expects operand(s) without an operand");
		program.add(new Instruction(code));
	}
	
	public void write(Bytecode code, String name) {
		program.add(new Instruction(code, name));
	}
	
	public void write(Bytecode code, String name, int stackIn, int stackOut) {
		Instruction instr = new Instruction(code, name);
		instr.stackIn = stackIn;
		instr.stackOut = stackOut;
		program.add(instr);
	}	
		
	public void write(Bytecode code, float number) {
		if (code.ops != 1) throw new Error("Trying to write '" + code.name() + "' that expects " + code.ops + " operands with one operand");
		program.add(new Instruction(code, number));
	}
	
	public void write(Bytecode code, int number) {
		if (code.ops != 1) throw new Error("Trying to write '" + code.name() + "' that expects " + code.ops + " operands with one operand");
		program.add(new Instruction(code, number));
	}
	
	public void writeWideOp(Bytecode code, int width) {
		if (code.ops > 0) throw new Error("Trying to write '" + code.name() + "' that expects operand(s) without an operand");
		String str = code.name() + (width > 1 ? width : "");
		program.add(new Instruction(Bytecode.valueOf(str)));
	}
	
	public void writeWideOp(Bytecode code, Value value) {
		if (code.ops > 0) throw new Error("Trying to write '" + code.name() + "' that expects operand(s) without an operand");
		String str = code.name() + (value.type.size > 1 ? value.type.size : "");
		program.add(new Instruction(Bytecode.valueOf(str)));
	}

	public void shift(Swizzle swizzle, Variable tempVar) {
		boolean isLinear = true;
		
		for (int i = 0; i < swizzle.size; i++)
			if (swizzle.indices[i] != i)
				isLinear = false;
		
		if (isLinear) {
			for (int i = swizzle.size; i < swizzle.inType.size; i++)
				write(Bytecode.POP);
		} else
			store(tempVar, 0, swizzle.inType.size);
			
			for (int i = 0; i < swizzle.size; i++)
				load(tempVar, swizzle.indices[i], 1);
	}
		
	public void store(Variable var) {
		store(var, 0, var.type.size);
	}	
	
	public void store(Variable var, int offset, int size) {
		String str = "STORE" + (size>1?size:"");
		program.add(new Instruction(Bytecode.valueOf(str), var.slot+offset));
	}
	
	public void store(Variable var, Swizzle swizzle) {
		boolean isLinear = true;
		
		for (int i = 0; i < swizzle.size; i++)
			if (swizzle.indices[i] != i)
				isLinear = false;
		
		if (isLinear)
			store(var, 0, swizzle.size);
		else
			for (int i = 0; i < swizzle.size; i++)
				store(var, swizzle.indices[i], 1);
	}
	
	public void load(Variable var) {
		load(var, 0, var.type.size);
	}
	
	public void load(Variable var, int offset, int size) {
		String str = "LOAD" + (size>1?size:"");
		program.add(new Instruction(Bytecode.valueOf(str), var.slot+offset));
	}
	
	public void load(Variable var, Swizzle swizzle) {
		boolean isLinear = true;
		
		for (int i = 0; i < swizzle.size; i++)
			if (swizzle.indices[i] != i)
				isLinear = false;
		
		if (isLinear)
			load(var, 0, swizzle.size);
		else
			for (int i = 0; i < swizzle.size; i++)
				load(var, swizzle.indices[i], 1);
	}
		
	public void input(String name, Variable var) {
		program.addInput(name, var.slot, var.type.size);
	}
	
	public void output(String name, Variable var) {
		program.addOutput(name, var.slot, var.type.size);
	}
}
