package whitesquare.glslcross.bytecode.analyzer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

public class StackAnalyzer implements Analyzer {
	
	private boolean debug = false;
	
	public int maxStack = 0;
	
	public StackAnalyzer(boolean debug) {
		this.debug = debug;
	}
	
	@Override
	public boolean analyze(Program program) {
		ArrayList<Instruction> instrs = program.instructions;
		Map<String, Instruction> functions = new HashMap<String, Instruction>();
		
		int stack = 0;
		
		for (int i = 0; i < instrs.size(); i++) {
			Instruction instr = instrs.get(i);
			
			if (instr.bytecode == Bytecode.FUNC) {
				stack = instr.stackIn;
				functions.put(instr.valueString, instr);
			}
			
			int stackIn = instr.bytecode.stackIn;
			int stackOut = instr.bytecode.stackOut;
			
			if (instr.bytecode == Bytecode.CALL) {
				if (functions.containsKey(instr.valueString)) {
					Instruction func = functions.get(instr.valueString);
					stackIn = func.stackIn;
					stackOut = func.stackOut;
				} else {
					System.out.println("Could not find the function: " + instr.valueString);
					return false;	
				}
			}
			
			if (stackIn > stack) {
				System.out.println("Instruction uses more than what is in the stack!!");
				System.out.println(" * Instr: " + instr);
				System.out.println(" * Stack Use: " + stackIn);
				System.out.println(" * Stack Left: " + stack);
				return false;
			}
			
			if (debug) {
				if (instr.bytecode == Bytecode.FUNC) System.out.println();
				
				for (int j = 0; j < stack - stackIn; j++)
					System.out.print("|");
				for (int j = 0; j < stackIn; j++)
					System.out.print("o");
				
				if (stackIn == 0 && stackOut > 0)
					for (int j = 0; j < stackOut; j++)
						System.out.print("+");
				
				System.out.println(" " + instr);
				
				if (stackIn > 0 && stackOut > 0)
				{
					for (int j = 0; j < stack - stackIn; j++)
						System.out.print("|");
					for (int j = 0; j < stackOut; j++)
						System.out.print("+");
					System.out.println();
				}
			}
			
			stack += stackOut - stackIn;
			
			if (stack > maxStack) maxStack = stack;
			
			if (debug && stack == 0) {
				System.out.println("~~~~~~");
			}
		}
		
		if (stack != 0) {
			System.out.println("Stack should be empty!! - At: " + stack);
			return false;
		}
		
		System.out.println("Maximum stack size: " + maxStack);
				
		return true;
	}

}
