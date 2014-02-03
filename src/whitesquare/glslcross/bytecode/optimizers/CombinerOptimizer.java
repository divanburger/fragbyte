package whitesquare.glslcross.bytecode.optimizers;

import java.util.ArrayList;

import whitesquare.glslcross.bytecode.Bytecode;
import whitesquare.glslcross.bytecode.Instruction;
import whitesquare.glslcross.bytecode.Program;

class BasicPattern {
	enum Type {REMOVE_SECOND, REMOVE_BOTH, REPLACE};
	
	Bytecode first;
	Bytecode second;
	Type type;
	
	Bytecode replace;
	
	BasicPattern(Bytecode first, Bytecode second, Type type) {
		this.first = first;
		this.second = second;
		this.type = type;
	}
	
	BasicPattern(Bytecode first, Bytecode second, Bytecode replace) {
		this.first = first;
		this.second = second;
		this.type = Type.REPLACE;
		this.replace = replace;
	}
	
	boolean match(Instruction last, Instruction cur) {return (first == last.bytecode) && (second == cur.bytecode);}
}

public class CombinerOptimizer implements Optimizer {	
	ArrayList<BasicPattern>	patterns = new ArrayList<BasicPattern>();
	
	public CombinerOptimizer() {
		patterns.add(new BasicPattern(Bytecode.RETURN, Bytecode.RETURN, BasicPattern.Type.REMOVE_SECOND));
		
		patterns.add(new BasicPattern(Bytecode.LOAD, Bytecode.POP, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LOAD2, Bytecode.POP2, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LOAD3, Bytecode.POP3, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LOAD4, Bytecode.POP4, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LOAD2, Bytecode.POP, Bytecode.LOAD));
		patterns.add(new BasicPattern(Bytecode.LOAD3, Bytecode.POP, Bytecode.LOAD2));
		patterns.add(new BasicPattern(Bytecode.LOAD3, Bytecode.POP2, Bytecode.LOAD));
		patterns.add(new BasicPattern(Bytecode.LOAD4, Bytecode.POP, Bytecode.LOAD3));
		patterns.add(new BasicPattern(Bytecode.LOAD4, Bytecode.POP2, Bytecode.LOAD2));
		patterns.add(new BasicPattern(Bytecode.LOAD4, Bytecode.POP3, Bytecode.LOAD));

		patterns.add(new BasicPattern(Bytecode.LDC, Bytecode.POP, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LDC2, Bytecode.POP2, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LDC3, Bytecode.POP3, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LDC4, Bytecode.POP4, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.LDC2, Bytecode.POP, Bytecode.LDC));
		patterns.add(new BasicPattern(Bytecode.LDC3, Bytecode.POP, Bytecode.LDC2));
		patterns.add(new BasicPattern(Bytecode.LDC3, Bytecode.POP2, Bytecode.LDC));
		patterns.add(new BasicPattern(Bytecode.LDC4, Bytecode.POP, Bytecode.LDC3));
		patterns.add(new BasicPattern(Bytecode.LDC4, Bytecode.POP2, Bytecode.LDC2));
		patterns.add(new BasicPattern(Bytecode.LDC4, Bytecode.POP3, Bytecode.LDC));
		
		patterns.add(new BasicPattern(Bytecode.MUL, Bytecode.ADD, Bytecode.MAD));
		patterns.add(new BasicPattern(Bytecode.MUL2, Bytecode.ADD2, Bytecode.MAD2));
		patterns.add(new BasicPattern(Bytecode.MUL3, Bytecode.ADD3, Bytecode.MAD3));
		patterns.add(new BasicPattern(Bytecode.MUL4, Bytecode.ADD4, Bytecode.MAD4));
		
		patterns.add(new BasicPattern(Bytecode.DUP, Bytecode.POP, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.DUP2, Bytecode.POP2, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.DUP3, Bytecode.POP3, BasicPattern.Type.REMOVE_BOTH));
		
		patterns.add(new BasicPattern(Bytecode.DUPS, Bytecode.POP, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.DUPS2, Bytecode.POP2, BasicPattern.Type.REMOVE_BOTH));
		patterns.add(new BasicPattern(Bytecode.DUPS3, Bytecode.POP3, BasicPattern.Type.REMOVE_BOTH));

		patterns.add(new BasicPattern(Bytecode.DUPS2, Bytecode.POP, Bytecode.DUPS));
		patterns.add(new BasicPattern(Bytecode.DUPS3, Bytecode.POP, Bytecode.DUPS2));
		patterns.add(new BasicPattern(Bytecode.DUPS3, Bytecode.POP2, Bytecode.DUPS));

		patterns.add(new BasicPattern(Bytecode.ADD, Bytecode.POP, Bytecode.POP2));
		patterns.add(new BasicPattern(Bytecode.SUB, Bytecode.POP, Bytecode.POP2));
		patterns.add(new BasicPattern(Bytecode.MUL, Bytecode.POP, Bytecode.POP2));
		patterns.add(new BasicPattern(Bytecode.DIV, Bytecode.POP, Bytecode.POP2));
		patterns.add(new BasicPattern(Bytecode.MOD, Bytecode.POP, Bytecode.POP2));
		patterns.add(new BasicPattern(Bytecode.ATAN, Bytecode.POP, Bytecode.POP2));
		patterns.add(new BasicPattern(Bytecode.STEP, Bytecode.POP, Bytecode.POP2));
	}
	
	@Override
	public boolean optimize(Program program) {		
		ArrayList<Instruction> instrs = program.instructions;
		
		boolean changes = false;
		boolean executedChange = false;
		
		instrLoop: for (int i = 1; i < instrs.size();) {
			Instruction last = instrs.get(i-1);
			Instruction cur = instrs.get(i);
			
			if (executedChange) changes = true;
			executedChange = true;
			
			for (BasicPattern pattern : patterns)
				if (pattern.match(last, cur)) {
					switch (pattern.type) {
						case REMOVE_BOTH:
							instrs.remove(i);
							instrs.remove(i-1);
							i--;
							break;
						case REMOVE_SECOND:
							instrs.remove(i);
							break;
						case REPLACE:
							last.bytecode = pattern.replace;
							instrs.remove(i);
							break;
					}
					continue instrLoop;
				}
										
			if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.LOAD && last.valueInt == cur.valueInt - 1) {
				last.bytecode = Bytecode.LOAD2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.LOAD2 && last.valueInt == cur.valueInt - 1) {
				last.bytecode = Bytecode.LOAD3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.LOAD3 && last.valueInt == cur.valueInt - 1) {
				last.bytecode = Bytecode.LOAD4;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.LOAD && last.valueInt == cur.valueInt - 2) {
				last.bytecode = Bytecode.LOAD3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.LOAD2 && last.valueInt == cur.valueInt - 2) {
				last.bytecode = Bytecode.LOAD4;
				instrs.remove(i);
				continue;
			}			
			else if (last.bytecode == Bytecode.LDC && cur.bytecode == Bytecode.LDC && last.valueFloat == cur.valueFloat) {
				last.bytecode = Bytecode.LDC2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC && cur.bytecode == Bytecode.LDC2 && last.valueFloat == cur.valueFloat) {
				last.bytecode = Bytecode.LDC3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC && cur.bytecode == Bytecode.LDC3 && last.valueFloat == cur.valueFloat) {
				last.bytecode = Bytecode.LDC4;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC2 && cur.bytecode == Bytecode.LDC && last.valueFloat == cur.valueFloat) {
				last.bytecode = Bytecode.LDC3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC2 && cur.bytecode == Bytecode.LDC2 && last.valueFloat == cur.valueFloat) {
				last.bytecode = Bytecode.LDC4;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC3 && cur.bytecode == Bytecode.LDC && last.valueFloat == cur.valueFloat) {
				last.bytecode = Bytecode.LDC4;
				instrs.remove(i);
				continue;
			}
			
			else if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.LOAD && last.valueInt == cur.valueInt) {
				cur.bytecode = Bytecode.DUPS;
				cur.type = Instruction.Type.NONE;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.LOAD2 && last.valueInt == cur.valueInt) {
				cur.bytecode = Bytecode.DUPS2;
				cur.type = Instruction.Type.NONE;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.LOAD3 && last.valueInt == cur.valueInt) {
				cur.bytecode = Bytecode.DUPS3;
				cur.type = Instruction.Type.NONE;
				continue;
			}
			
			else if (last.bytecode == Bytecode.STORE && cur.bytecode == Bytecode.LOAD && last.valueInt == cur.valueInt) {
				last.bytecode = Bytecode.DUP;
				last.type = Instruction.Type.NONE;
				cur.bytecode = Bytecode.STORE;
				continue;
			}
			else if (last.bytecode == Bytecode.STORE2 && cur.bytecode == Bytecode.LOAD2 && last.valueInt == cur.valueInt) {
				last.bytecode = Bytecode.DUP2;
				last.type = Instruction.Type.NONE;
				cur.bytecode = Bytecode.STORE2;
				continue;
			}
			else if (last.bytecode == Bytecode.STORE3 && cur.bytecode == Bytecode.LOAD3 && last.valueInt == cur.valueInt) {
				last.bytecode = Bytecode.DUP3;
				last.type = Instruction.Type.NONE;
				cur.bytecode = Bytecode.STORE3;
				continue;
			}
			
			else if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.STORE && last.valueInt == cur.valueInt) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.STORE && last.valueInt == cur.valueInt - 1) {
				last.bytecode = Bytecode.LOAD;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.STORE2 && last.valueInt == cur.valueInt) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}	
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.STORE && last.valueInt == cur.valueInt - 2) {
				last.bytecode = Bytecode.LOAD2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.STORE2 && last.valueInt == cur.valueInt - 1) {
				last.bytecode = Bytecode.LOAD;
				instrs.remove(i);
				continue;
			}	
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.STORE3 && last.valueInt == cur.valueInt) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.STORE && last.valueInt == cur.valueInt - 3) {
				last.bytecode = Bytecode.LOAD3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.STORE2 && last.valueInt == cur.valueInt - 2) {
				last.bytecode = Bytecode.LOAD2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.STORE3 && last.valueInt == cur.valueInt - 1) {
				last.bytecode = Bytecode.LOAD;
				instrs.remove(i);
				continue;
			}	
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.STORE4 && last.valueInt == cur.valueInt) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			
			else if (last.bytecode == Bytecode.LDC && cur.bytecode == Bytecode.NEG) {
				last.valueFloat *= -1.0;
				instrs.remove(i);
				continue;
			}
			
			else
				executedChange = false;
			
			i++;
		}
		
		return changes || executedChange;
	}
}
