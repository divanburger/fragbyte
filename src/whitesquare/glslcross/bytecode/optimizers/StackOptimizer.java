package whitesquare.glslcross.bytecode.optimizers;

import java.util.ArrayList;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

public class StackOptimizer implements Optimizer {

	private int[] stackInstr = new int[32];
	private int[] stackPos = new int[32];
	private int[] instrStackSize;
	
	public int isVarChannelOpen(ArrayList<Instruction> instrs, int fromIndex, int slot) {
		int startSP = instrStackSize[fromIndex];
		int i = fromIndex - 1;
		for (; i >= 0; i--) {
			if (startSP > instrStackSize[fromIndex]) return -1;
			
			Instruction instr = instrs.get(i);
			if (instr.bytecode == Bytecode.STORE && instr.valueInt == slot)
				return i;
		}
		
		return i;
	}
	
	@Override
	public boolean optimize(Program program) {
		ArrayList<Instruction> instrs = program.instructions;

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
				} else if (instr.bytecode == Bytecode.MUL) {
					int k = stackInstr[sp+1];
					Instruction second = instrs.get(k);
					
					if (second.bytecode == Bytecode.LOAD) {
						System.out.println("Possible back channel");
						int si = isVarChannelOpen(instrs, i, second.valueInt);
						if (si >= 0) {
							System.out.println("!!! Found back channel");
							System.out.println("Store: "+ si);
							System.out.println("Load: " + k);
							instrs.remove(k);
							instrs.remove(si);
							changed = true;
							break;
						}
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
						instr.valueFloat = instrs.get(a).valueFloat * instrs.get(b).valueFloat;
						
						instrs.remove(b);
						if (a != b) instrs.remove(a);
						
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
