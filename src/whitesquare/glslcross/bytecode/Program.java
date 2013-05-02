package whitesquare.glslcross.bytecode;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

import whitesquare.glslcross.bytecode.ProgramParameter.Type;

public class Program {
	public int maxSlots = 0;
	public int maxStack = 0;
	public ArrayList<Instruction>		instructions = new ArrayList<Instruction>();
	public ArrayList<ProgramParameter>	parameters = new ArrayList<ProgramParameter>();
	
	public Program() {
		
	}
	
	public void setMaxSlots(int slots) {
		maxSlots = slots;
	}
	
	public void setMaxStack(int stack) {
		maxStack = stack;
	}
	
	public void add(Instruction instruction) {
		instructions.add(instruction);
	}
	
	public void addInput(String name, int slot, int size) {
		parameters.add(new ProgramParameter(Type.IN, slot, size, name));
	}
	
	public void addOutput(String name, int slot, int size) {
		parameters.add(new ProgramParameter(Type.OUT, slot, size, name));
	}
	
	public void writeOut(String filename) {
		FileWriter writer;
		
		try {			
			writer = new FileWriter(filename);
			
			writer.write(Bytecode.SLOTS + " " + maxSlots + "\n");
			writer.write(Bytecode.STACK + " " + maxStack + "\n");
			writer.write("\n");
			
			for (ProgramParameter param : parameters) {
				writer.write(param.type.name() + " " + param.name + " " + param.slot + " " + param.size + "\n");
			}
			
			writer.write("\n");
			
			for (Instruction instr : instructions) {
				writer.write(instr.bytecode.name());
				if (instr.type == Instruction.Type.INTEGER)
					writer.write(" " + instr.valueInt);
				else if (instr.type == Instruction.Type.FLOAT)
					writer.write(" " + instr.valueFloat);
				else if (instr.type == Instruction.Type.STRING)
					writer.write(" " + instr.valueString);
				writer.write("\n");
			}
			
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
