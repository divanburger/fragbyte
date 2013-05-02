package whitesquare.glslcross.glslcompiler;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

class BytecodeWriter {
	private Program program;
		
	BytecodeWriter() {
		program = new Program();
	}
	
	Program getProgram() {
		return program;
	}
		
	void write(Bytecode code) {
		if (code.ops > 0) throw new Error("Trying to write '" + code.name() + "' that expects operand(s) without an operand");
		program.add(new Instruction(code));
	}
	
	void write(Bytecode code, String name) {
		program.add(new Instruction(code, name));
	}
		
	void write(Bytecode code, float number) {
		if (code.ops != 1) throw new Error("Trying to write '" + code.name() + "' that expects " + code.ops + " operands with one operand");
		program.add(new Instruction(code, number));
	}
	
	void write(Bytecode code, int number) {
		if (code.ops != 1) throw new Error("Trying to write '" + code.name() + "' that expects " + code.ops + " operands with one operand");
		program.add(new Instruction(code, number));
	}
	
	void writeWideOp(Bytecode code, int width) {
		if (code.ops > 0) throw new Error("Trying to write '" + code.name() + "' that expects operand(s) without an operand");
		String str = code.name() + (width > 1 ? width : "");
		program.add(new Instruction(Bytecode.valueOf(str)));
	}
	
	void writeWideOp(Bytecode code, Value value) {
		if (code.ops > 0) throw new Error("Trying to write '" + code.name() + "' that expects operand(s) without an operand");
		String str = code.name() + (value.type.size > 1 ? value.type.size : "");
		program.add(new Instruction(Bytecode.valueOf(str)));
	}
		
	void store(Variable var) {
		store(var, 0, var.type.size);
	}	
	
	void store(Variable var, int offset, int size) {
		String str = "STORE" + (size>1?size:"");
		program.add(new Instruction(Bytecode.valueOf(str), var.slot+offset));
	}
	
	void load(Variable var) {
		load(var, 0, var.type.size);
	}
	
	void load(Variable var, int offset, int size) {
		String str = "LOAD" + (size>1?size:"");
		program.add(new Instruction(Bytecode.valueOf(str), var.slot+offset));
	}
		
	void input(String name, Variable var) {
		program.addInput(name, var.slot, var.type.size);
	}
	
	void output(String name, Variable var) {
		program.addOutput(name, var.slot, var.type.size);
	}
}
