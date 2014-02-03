package whitesquare.glslcross.bytecode.optimizers;

import java.util.ArrayList;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;
import whitesquare.glslcross.bytecode.ProgramParameter;

public class StoreLoadOptimizer implements Optimizer {

	@Override
	public boolean optimize(Program program) {
		boolean changes = false;
		
		ArrayList<Instruction> instrs = program.instructions;
		
		int[] lastStore = new int[program.maxSlots];
		int[] lastLoad = new int[program.maxSlots];
		
		for (int i = 0; i < program.maxSlots; i++) {
			lastStore[i] = -1;
			lastLoad[i]  = -1;
		}
		
		for (int i = 0; i < instrs.size(); i++) {
			Instruction instr = instrs.get(i);
			
			// Fake a load on the end of a repeat
			if (instr.bytecode == Bytecode.ENDREPEAT) {
				for (int j = 0; j < program.maxSlots; j++)
					if (lastStore[j] >= 0)
						lastLoad[j] = i;
				continue;
			}
			
			String instrName = instr.bytecode.name();
			
			int size = instr.bytecode.getWidth(); 
			
			if (instrName.startsWith("STORE")) {
				boolean cover = true;
				for (int j = 0; j < size; j++) {
					int ls = lastStore[instr.valueInt+j];
					int ll = lastLoad[instr.valueInt+j];
					if (ls == -1 || ll >= ls) cover = false;
				}
				
				if (cover) {
					Instruction last = instrs.get(lastStore[instr.valueInt]);
					if (instr.valueInt == last.valueInt && size == last.bytecode.getWidth()) {
						last.bytecode = Bytecode.valueOf("POP" + (size>1?size:""));
						last.type = Instruction.Type.NONE;
						changes = true;
					}
				}
				
				for (int j = 0; j < size; j++)
					lastStore[instr.valueInt+j] = i;
			}
			
			if (instrName.startsWith("LOAD")) {
				for (int j = 0; j < size; j++)
					lastLoad[instr.valueInt+j] = i;
			}
		}
		
		// Fake a load at the end for out parameters
		for (int i = 0; i < program.parameters.size(); i++) {
			ProgramParameter parm = program.parameters.get(i);
			if (parm.type == ProgramParameter.Type.OUT)
				for (int j = 0; j < parm.size; j++)
					lastLoad[parm.slot+j] = instrs.size();
		}
		
		// Remove stores for values that are not used
		for (int i = 0; i < program.maxSlots; i++) {
			if (lastStore[i] == -1) continue;
			
			Instruction si = instrs.get(lastStore[i]);
			int size = si.bytecode.getWidth();
			
			boolean unused = true;
			for (int j = 0; j < size; j++) {
				int ls = lastStore[si.valueInt+j];
				int ll = lastLoad[si.valueInt+j];
				if (ls == -1 || ll >= ls) unused = false;
			}
			
			if (unused) {
				si.bytecode = Bytecode.valueOf("POP" + (size>1?size:""));
				si.type = Instruction.Type.NONE;
				changes = true;
				i += size - 1;
			}
		}
		
		return changes;
	}

}
