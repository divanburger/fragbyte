package whitesquare.glslcross.bytecode.optimizers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

public class StackOptimizer implements BytecodeOptimizer {

	private int[] stackInstr = new int[32];
	private int[] stackPos = new int[32];
	private int[] instrStackSize;
		
	@Override
	public boolean optimize(Program program) {
		ArrayList<Instruction> instrs = program.instructions;
		Map<String, Instruction> functions = new HashMap<String, Instruction>();

		instrStackSize = new int[instrs.size()]; 
		
		int sp = 0;
		boolean changed = true;
		
		for (int pass = 0; pass < 1000 && changed; pass++) {
			System.out.println("StackOptimizer: Pass " + pass);
			changed = false;
			
			sp = 0;
			for (int i = 0; i < instrs.size(); i++) {
				instrStackSize[i] = sp;
				
				Instruction instr = instrs.get(i);
				
				int stackIn = instr.bytecode.stackIn;
				int stackOut = instr.bytecode.stackOut;

				if (instr.bytecode == Bytecode.FUNC) {
					functions.put(instr.valueString, instr);
					sp = 0;
					stackOut = instr.stackIn;
				} else if (instr.bytecode == Bytecode.CALL) {
					if (functions.containsKey(instr.valueString)) {
						Instruction func = functions.get(instr.valueString);
						stackIn = func.stackIn;
						stackOut = func.stackOut;
					} else {
						System.out.println("Could not find the function: " + instr.valueString);
						return false;	
					}
				}
				
				sp -= stackIn;
				
				System.out.println(i + ": " + instr);
				
				for (int j = 0; j < stackIn; j++) {
					int k = stackInstr[sp + j];
					System.out.println(" | " + k + ": " + instrs.get(k));
				}
				
				if (instr.bytecode == Bytecode.POP) {
					int k = stackInstr[sp];
					Instruction popped = instrs.get(k);
					
					if (popped.bytecode == Bytecode.LOAD || popped.bytecode == Bytecode.LDC || 
							popped.bytecode == Bytecode.DUP || popped.bytecode == Bytecode.DUPS) {
						instrs.remove(i);
						instrs.remove(k);
						changed = true;
						break;
					} else if (popped.bytecode == Bytecode.LOAD2) {
						instrs.remove(i);
						popped.bytecode = Bytecode.LOAD;
						if (stackPos[sp] == 0) popped.valueInt++;
						changed = true;
						break;
					}
				} 
				else if (instr.bytecode == Bytecode.POP2) {
					int k = stackInstr[sp];
					Instruction popped = instrs.get(k);
					
					if (popped.bytecode == Bytecode.LOAD2 || popped.bytecode == Bytecode.LDC2 || 
							popped.bytecode == Bytecode.DUP2 || popped.bytecode == Bytecode.DUPS2) {
						instrs.remove(i);
						instrs.remove(k);
						changed = true;
						break;
					}
				}
				else if (instr.bytecode == Bytecode.POP3) {
					int k = stackInstr[sp];
					Instruction popped = instrs.get(k);
					
					if (popped.bytecode == Bytecode.LOAD3 || popped.bytecode == Bytecode.LDC3 || 
							popped.bytecode == Bytecode.DUP3 || popped.bytecode == Bytecode.DUPS3) {
						instrs.remove(i);
						instrs.remove(k);
						changed = true;
						break;
					}
				}
				else if (instr.bytecode == Bytecode.POP4) {
					int k = stackInstr[sp];
					Instruction popped = instrs.get(k);
					
					if (popped.bytecode == Bytecode.LOAD4 || popped.bytecode == Bytecode.LDC4) {
						instrs.remove(i);
						instrs.remove(k);
						changed = true;
						break;
					}
				}
				else if (instr.bytecode == Bytecode.DUP || instr.bytecode == Bytecode.DUPS) {
					int k = stackInstr[sp];
					Instruction dupped = instrs.get(k);
					
					if (dupped.bytecode == Bytecode.LDC) {
						instrs.remove(i);
						dupped.bytecode = Bytecode.LDC2;
						changed = true;
						break;
					}
				} else if (instr.bytecode == Bytecode.MAD) { 
					int k = stackInstr[sp];
					Instruction first = instrs.get(k);
					
					if (first.bytecode == Bytecode.MUL) {
						instr.bytecode = Bytecode.DP2;
						instrs.remove(k);
						changed = true;
						break;
					} else if (first.bytecode == Bytecode.DP2) {
						instr.bytecode = Bytecode.DP3;
						instrs.remove(k);
						changed = true;
						break;
					} else if (first.bytecode == Bytecode.DP3) {
						instr.bytecode = Bytecode.DP4;
						instrs.remove(k);
						changed = true;
						break;
					}
				} else if (instr.bytecode == Bytecode.ADD) {
					// Move constant loads to the right hand side of an add
					int k = stackInstr[sp];
					Instruction leftSide = instrs.get(k);
					Instruction prev = instrs.get(i-1);
					
					if (leftSide.bytecode == Bytecode.LDC && prev.bytecode != Bytecode.LDC) {
						instrs.add(i, leftSide);
						instrs.remove(k);
						changed = true;
						break;
					}
				} else if (instr.bytecode == Bytecode.MUL) {
					boolean allConst = true;
					
					for (int j = 0; j < 2; j++) {
						int kj = stackInstr[sp+j];
						Instruction instrDep = instrs.get(kj);
						if (!instrDep.bytecode.name().startsWith("LDC"))
							allConst = false;
					}
					
					if (allConst) {
						int a = stackInstr[sp];
						int b = stackInstr[sp+1];
						
						instr.bytecode = Bytecode.LDC;
						instr.type = Instruction.Type.FLOAT;
						instr.valueFloat = instrs.get(a).valueFloat * instrs.get(b).valueFloat;
						
						instrs.remove(b);
						if (a != b) instrs.remove(a);
						
						changed = true;
						break;
					}
					
					// Move constant loads to the right hand side of a multiply
					int k = stackInstr[sp];
					Instruction leftSide = instrs.get(k);
					Instruction prev = instrs.get(i-1);
					
					if (leftSide.bytecode == Bytecode.LDC && prev.bytecode != Bytecode.LDC) {
						instrs.add(i, leftSide);
						instrs.remove(k);
						changed = true;
						break;
					}
				} else if (instr.bytecode == Bytecode.DIV) {
					int k = stackInstr[sp];
					Instruction first = instrs.get(k);
					
					if (first.bytecode == Bytecode.LDC && first.valueFloat == 1.0) {
						instr.bytecode = Bytecode.RCP;
						instrs.remove(k);
						changed = true;
						break;
					}
					
					boolean allConst = true;
					
					for (int j = 0; j < 2; j++) {
						int kj = stackInstr[sp+j];
						Instruction instrDep = instrs.get(kj);
						if (!instrDep.bytecode.name().startsWith("LDC"))
							allConst = false;
					}
					
					if (allConst) {
						int a = stackInstr[sp];
						int b = stackInstr[sp+1];
						
						instr.bytecode = Bytecode.LDC;
						instr.type = Instruction.Type.FLOAT;
						instr.valueFloat = instrs.get(a).valueFloat / instrs.get(b).valueFloat;
						
						instrs.remove(b);
						if (a != b) instrs.remove(a);
						
						changed = true;
						break;
					}
				} else if (instr.bytecode == Bytecode.RCP) {
					int k = stackInstr[sp];
					Instruction val = instrs.get(k);
					
					if (val.bytecode == Bytecode.LDC) {
						instr.bytecode = Bytecode.LDC;
						instr.type = Instruction.Type.FLOAT;
						instr.valueFloat = 1.0f / val.valueFloat;
						
						instrs.remove(k);
						
						changed = true;
						break;
					}
				} else if (instr.bytecode == Bytecode.SMOOTHSTEP) {
					boolean firstConst = true;
					
					for (int j = 0; j < 2; j++) {
						int k = stackInstr[sp+j];
						Instruction instrDep = instrs.get(k);
						if (!instrDep.bytecode.name().startsWith("LDC"))
							firstConst = false;
					}
					
					if (firstConst) {
						Instruction a = instrs.get(stackInstr[sp]);
						Instruction b = instrs.get(stackInstr[sp+1]);
						float va = a.valueFloat;
						float vb = b.valueFloat;
						
						instr.bytecode = Bytecode.SMOOTHSTEPR;
						
						a.valueFloat = va / (va - vb);
						b.valueFloat = 1.0f / (vb - va);
						changed = true;
						break;
					}
				}
				
				for (int j = 0; j < stackOut; j++) {
					stackInstr[sp+j] = i;
					stackPos[sp+j] = j;
				}
				sp += stackOut;
			}
		}
		
		if (sp != 0)
			System.out.println("Stack should be empty!! - At: " + sp);
				
		return false;
	}

}
