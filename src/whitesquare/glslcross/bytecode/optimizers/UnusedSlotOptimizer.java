package whitesquare.glslcross.bytecode.optimizers;

import java.util.ArrayList;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;
import whitesquare.glslcross.bytecode.ProgramParameter;

public class UnusedSlotOptimizer implements BytecodeOptimizer {

	private class Slot {
		int newSlot = 0;
		boolean used = false;
		boolean fixed = false;
		boolean constant = false;
		
		Slot(int slot) {newSlot = slot;}
	}
	
	private static Instruction makeInstr(boolean store, int amount, int pos) {
		if (store) {
			switch (amount) { 
				case 1: return new Instruction(Bytecode.STORE, pos);
				case 2: return new Instruction(Bytecode.STORE2, pos);
				case 3: return new Instruction(Bytecode.STORE3, pos);
				case 4: return new Instruction(Bytecode.STORE4, pos);
			}
		} else {
			switch (amount) { 
				case 1: return new Instruction(Bytecode.POP);
				case 2: return new Instruction(Bytecode.POP2);
				case 3: return new Instruction(Bytecode.POP3);
				case 4: return new Instruction(Bytecode.POP4);
			}	
		}
		return null;
	}
	
	@Override
	public boolean optimize(Program program) {
		ArrayList<ProgramParameter> parms = program.parameters;
		ArrayList<Instruction> instrs = program.instructions;
		
		// Gather slot usage
		Slot[] slots = new Slot[program.maxSlots];
		for (int i = 0; i < program.maxSlots; i++) slots[i] = new Slot(i);
		
		for (int i = 0; i < parms.size(); i++) {
			ProgramParameter p = parms.get(i);
			for (int j = 0; j < p.size; j++) {
				slots[p.slot+j].used = true;
				slots[p.slot+j].fixed = true;
				slots[p.slot+j].constant = true;
			}
		}
		
		for (int i = 0; i < instrs.size(); i++) {
			Instruction instr = instrs.get(i);
			
			try {
				if (instr.bytecode == Bytecode.LOAD) {
					slots[instr.valueInt].used = true;
				} else if (instr.bytecode == Bytecode.LOAD2) {
					slots[instr.valueInt].used = true;
					slots[instr.valueInt+1].used = true;
				} else if (instr.bytecode == Bytecode.LOAD3) {
					slots[instr.valueInt].used = true;
					slots[instr.valueInt+1].used = true;
					slots[instr.valueInt+2].used = true;
				} else if (instr.bytecode == Bytecode.LOAD4) {
					slots[instr.valueInt].used = true;
					slots[instr.valueInt+1].used = true;
					slots[instr.valueInt+2].used = true;
					slots[instr.valueInt+3].used = true;
				}
			} catch (ArrayIndexOutOfBoundsException e) {
				System.out.println("Invalid slot index in instruction: " + i + " - " + instr + " - expected below " + program.maxSlots);
				throw e;
			}
		}
				
		// Remove unused, unfixed slots
		int curNewSlot = 0;
		for (int i = 0; i < program.maxSlots; i++) {
			if (slots[i].fixed) continue; // Skip slots to be left alone
			
			if (slots[i].used) {
				while (slots[++curNewSlot].fixed) {} // Skip allocating a fixed slot
				slots[i].newSlot = curNewSlot;
			}
			else
				slots[i].newSlot = -1;
		}
		
		// Print out new slot assignment
		for (int i = 0; i < program.maxSlots; i++) {
			System.out.println("Slot " + i +  "->" + slots[i].newSlot + ": " + slots[i].used + " (" + slots[i].constant + ")");
		}

		// Fix slots in instructions
		boolean changes = false;
		for (int i = 0; i < instrs.size(); i++) {
			Instruction instr = instrs.get(i);
			
			boolean usesSlot = instr.bytecode == Bytecode.LOAD || instr.bytecode == Bytecode.LOAD2;
			usesSlot = usesSlot || instr.bytecode == Bytecode.LOAD3 || instr.bytecode == Bytecode.LOAD4;
			usesSlot = usesSlot || instr.bytecode == Bytecode.STORE || instr.bytecode == Bytecode.STORE2;
			usesSlot = usesSlot || instr.bytecode == Bytecode.STORE3 || instr.bytecode == Bytecode.STORE4;

			if (usesSlot) {
				boolean executedChanges = false;
				
				if (instr.bytecode.name().startsWith("STORE")) {
					int s = 1;
					if (instr.bytecode == Bytecode.STORE2) 
						s = 2;
					else if (instr.bytecode == Bytecode.STORE3) 
						s = 3;
					else if (instr.bytecode == Bytecode.STORE4)
						s = 4;
					
					instrs.remove(i);
					
					boolean lastStore = false;
					int lastPos = -2;
					int lastAmount = 0;
					
					int instrShift = 0;
					for (int j = 0; j < s; j++) {
						int newPos = slots[instr.valueInt+j].newSlot;
						
						if (slots[instr.valueInt+j].used || slots[instr.valueInt+j].fixed) {							
							if (!lastStore || lastPos + lastAmount != newPos) {
								if (lastAmount > 0) {
									instrs.add(i, makeInstr(lastStore, lastAmount, lastPos));
									instrShift++;
								}
								
								lastStore = true;
								lastPos = newPos;
								lastAmount = 1;
							} else {
								lastAmount++;
							}
						} else {
							if (lastStore) {
								if (lastAmount > 0) {
									instrs.add(i, makeInstr(lastStore, lastAmount, lastPos));
									instrShift++;
								}
								
								lastStore = false;
								lastPos = newPos;
								lastAmount = 1;
							} else {
								lastAmount++;
							}
						}
					}
					
					if (lastAmount > 0) {
						instrs.add(i, makeInstr(lastStore, lastAmount, lastPos));
						instrShift++;
					}
					
					i += instrShift - 1;
				}
				
				if (!executedChanges && instr.valueInt != slots[instr.valueInt].newSlot) {
					instr.valueInt = slots[instr.valueInt].newSlot;
					executedChanges = true;
				}
				
				if (executedChanges) changes = true;
			}
		}
		
		program.maxSlots = curNewSlot+1;
		
		return changes;
	}

}
