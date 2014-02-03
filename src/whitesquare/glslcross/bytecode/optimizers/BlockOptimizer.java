package whitesquare.glslcross.bytecode.optimizers;

import java.util.ArrayList;
import java.util.Set;
import java.util.TreeSet;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

public class BlockOptimizer implements Optimizer {
	class Block {
		ArrayList<Instruction>	instructions = new ArrayList<Instruction>();
		
		boolean	barrier = false;
		int startLoadSlot = -1;
		int startLoadSize = -1;
		int endStoreSlot = -1;
		int endStoreSize = -1;
		
		Set<Integer> slotStores = new TreeSet<Integer>();
		Set<Integer> slotLoads = new TreeSet<Integer>();
		Set<Integer> slotTrash = new TreeSet<Integer>();
		
		Block(ArrayList<Instruction> contents, int index, boolean barrier) {
			this.barrier = barrier;
			instructions.add(contents.get(index));
		}
		
		Block(ArrayList<Instruction> contents, int start, int end) {
			for (int i = start; i < end; i++)
				instructions.add(contents.get(i));
		}
		
		void write(Program program) {
			for (Instruction instr : instructions)
				program.add(instr);
		}
		
		void printDebug() {
			System.out.println("= Block Start =");
			if (barrier) {
				System.out.println(" * Barrier");
			} else {
				System.out.println(" * Load: " + startLoadSlot + " size " + startLoadSize);
				System.out.println(" * Store: " + endStoreSlot + " size " + endStoreSize);
				
				System.out.print(" * Load Dep:");
				for (Integer i : slotLoads) System.out.print(" " + i);
				System.out.println();
				
				System.out.print(" * Store Dep:");
				for (Integer i : slotStores) System.out.print(" " + i);
				System.out.println();
				
				System.out.print(" * Trash:");
				for (Integer i : slotTrash) System.out.print(" " + i);
				System.out.println();
			}
			for (Instruction instr : instructions)
				System.out.println(instr);
			System.out.println("-- Block End --");
		}
	}
	
	@Override
	public boolean optimize(Program program) {
		ArrayList<Instruction> instrs = program.instructions;
		
		int blockStart = -1;
		int sp = 0;
		
		// Break into big blocks
		ArrayList<Block> blocks = new ArrayList<Block>();
		for (int i = 0; i < instrs.size(); i++) {	
			Instruction instr = instrs.get(i);
			
			if (sp == 0) blockStart = i;
			sp += instr.bytecode.stackOut - instr.bytecode.stackIn;
			
			boolean barrier = instr.bytecode == Bytecode.REPEAT || instr.bytecode == Bytecode.ENDREPEAT  || 
							  instr.bytecode == Bytecode.FUNC || instr.bytecode == Bytecode.RETURN;
			
			if (barrier) {
				if (blockStart != i) {
					System.out.println("Stack problem at " + i + ": " + instr);
					return false;
				}
				
				blocks.add(new Block(instrs, i, true));
				blockStart = -1;
			} else if (sp == 0) {
				if (blockStart < 0) {
					System.out.println("Couldn't find block start at " + i + ": " + instr);
					return false;
				}
				
				Block block = new Block(instrs, blockStart, i+1);
				
				// Determine start of block info
				Instruction startInstr = instrs.get(blockStart);
				if (startInstr.bytecode.isLoad()) {
					block.startLoadSize = startInstr.bytecode.getWidth();
					block.startLoadSlot = startInstr.valueInt;
				} else if (startInstr.bytecode.isLoadConst()) {
					block.startLoadSize = startInstr.bytecode.getWidth();
				} else {
					System.out.println("Block doesn't start with a load at " + blockStart + ": " + startInstr);
					return false;
				}
				
				// Determine end of block info
				if (instr.bytecode.isStore()) {
					block.endStoreSize = instr.bytecode.getWidth();
					block.endStoreSlot = instr.valueInt;
				} else {
					System.out.println("Block doesn't end with a store at " + i + ": " + instr);
					return false;
				}
								
				blocks.add(block);
				blockStart = -1;
			}
		}
		
		// Determine dependency info
		for (Block block : blocks)
			for (Instruction instr : block.instructions) {
				if (instr.bytecode.isLoad())
					for (int i = 0; i < instr.bytecode.getWidth(); i++) 
						if (!block.slotStores.contains(instr.valueInt+i))
							block.slotLoads.add(instr.valueInt+i);
				
				if (instr.bytecode.isStore())
					for (int i = 0; i < instr.bytecode.getWidth(); i++) 
						block.slotStores.add(instr.valueInt+i);				
			}
		
		// Check for trashing without dependency
		System.out.println("#### Analyse ####");
		for (int i = 0; i < blocks.size(); i++) {
			Block block = blocks.get(i);
			if (block.barrier) continue;
			
			Set<Integer> haveLoaded = new TreeSet<Integer>();
						
			// Look at lower blocks
			for (int j = i + 1; j < blocks.size(); j++) {
				Block lowerBlock = blocks.get(j);
				if (lowerBlock.barrier) {
					System.out.println("$ Barrier");
					break;
				}
				
				for (Integer load : lowerBlock.slotLoads)
					haveLoaded.add(load);
				
				for (Integer store : block.slotStores)
					if (!haveLoaded.contains(store) && lowerBlock.slotStores.contains(store)) {
						block.slotTrash.add(store);
					}
			}
			
			for (Integer trash : block.slotTrash) block.slotStores.remove(trash);
		}
				
		// Debug print
		System.out.println("#### Before ####");
		for (Block block : blocks) block.printDebug();
		
		// Shift blocks down
		System.out.println("#### Shift ####");
		blocksLoop: for (int i = 0; i < blocks.size(); i++) {
			Block block = blocks.get(i);
			if (block.barrier) continue;
						
			// Look at lower blocks
			for (int j = i + 1; j < blocks.size(); j++) {
				Block lowerBlock = blocks.get(j);
				if (lowerBlock.barrier) {
					System.out.println("$ Barrier");
					continue blocksLoop;
				}
								
				if (j != i + 1) {
					// See if we can't move load just before consumer
					if (block.endStoreSlot == lowerBlock.startLoadSlot) {
						System.out.println("#$ Shifting block:");
						block.printDebug();
						
						System.out.println("$ Before block:");
						lowerBlock.printDebug();
						
						blocks.add(j, block);
						blocks.remove(i);
						i--;
						continue blocksLoop;
					}
				}
				
				// See if we can't insert block into where it is supposed to be used
				int insertPos = -1;
				
				for (int k = 0; k < lowerBlock.instructions.size(); k++) {
					Instruction instr = lowerBlock.instructions.get(k);
					
					if (instr.bytecode.isLoad()) {
						if (instr.valueInt == block.endStoreSlot && 
								instr.bytecode.getWidth() == block.endStoreSize) {						
							insertPos = k;
							break;
						}
						
						if ((instr.valueInt < block.endStoreSlot + block.endStoreSize) && 
								(instr.valueInt + instr.bytecode.getWidth() >= block.endStoreSlot)) {
							break;
						}
					} else 	if (instr.bytecode.isStore()) {						
						if ((instr.valueInt < block.endStoreSlot + block.endStoreSize) && 
								(instr.valueInt + instr.bytecode.getWidth() >= block.endStoreSlot)) {
							break;
						}
					}
				}
				
				if (insertPos >= 0) {
					System.out.println("#$ Inserting block:");
					block.printDebug();
					
					System.out.println("$ Into block at " + insertPos + ":");
					lowerBlock.printDebug();
					
					ArrayList<Instruction> newInstrs = new ArrayList<Instruction>();
					for (int k = 0; k < insertPos; k++) 
						newInstrs.add(lowerBlock.instructions.get(k));
					
					newInstrs.addAll(block.instructions);
					
					for (int k = insertPos; k < lowerBlock.instructions.size(); k++) 
						newInstrs.add(lowerBlock.instructions.get(k));
					
					blocks.remove(i);
					lowerBlock.instructions = newInstrs;
					continue blocksLoop;
				}
				
				// Check for dependency violation if we would continue
				for (Integer load : block.slotLoads)
					if (lowerBlock.slotStores.contains(load) || lowerBlock.slotTrash.contains(load)) {
						System.out.println("$ Dependency: Would read what was overwritten");
						continue blocksLoop;
					}
				
				for (Integer store : block.slotStores)
					if (lowerBlock.slotLoads.contains(store)) {
						System.out.println("$ Dependency: Would not write what was to be read");
						continue blocksLoop;
					} else if (lowerBlock.slotStores.contains(store)) {
						System.out.println("$ Dependency: Would overwrite what was to be read");
						continue blocksLoop;
					}
			}
		}
		
		// Debug print
		System.out.println("#### After ####");
		for (Block block : blocks) block.printDebug();
		
		// Reconstruct program
		program.instructions.clear();
		
		for (Block block : blocks) {
			for (Instruction instr : block.instructions)
				program.instructions.add(instr);
		}
		
		return false;
	}
}
