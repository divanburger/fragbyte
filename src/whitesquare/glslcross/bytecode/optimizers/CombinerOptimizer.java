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
	
	boolean match(Instruction last, Instruction cur) {return (first == last.bytecode) && (second == cur.bytecode);}
}

public class CombinerOptimizer implements Optimizer {	
	ArrayList<BasicPattern>	patterns = new ArrayList<BasicPattern>();
	
	public CombinerOptimizer() {
		patterns.add(new BasicPattern(Bytecode.RETURN, Bytecode.RETURN, BasicPattern.Type.REMOVE_SECOND));
	}
	
	@Override
	public boolean optimize(Program program) {		
		ArrayList<Instruction> instrs = program.instructions;
		
		boolean changes = false;
		boolean executedChange = false;
		
		for (int i = 1; i < instrs.size();) {
			Instruction last = instrs.get(i-1);
			Instruction cur = instrs.get(i);
			
			if (executedChange) changes = true;
			executedChange = true;
										
			if (last.bytecode == Bytecode.RETURN && cur.bytecode == Bytecode.RETURN) {
				instrs.remove(i);
				continue;
			}
			
			else if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.POP) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.LOAD;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD2 && cur.bytecode == Bytecode.POP2) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.LOAD2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.POP2) {
				last.bytecode = Bytecode.LOAD;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD3 && cur.bytecode == Bytecode.POP3) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.LOAD3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.POP2) {
				last.bytecode = Bytecode.LOAD2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.POP3) {
				last.bytecode = Bytecode.LOAD;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LOAD4 && cur.bytecode == Bytecode.POP4) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			
			else if (last.bytecode == Bytecode.LDC && cur.bytecode == Bytecode.POP) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LDC2 && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.LDC;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC2 && cur.bytecode == Bytecode.POP2) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LDC3 && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.LDC2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC3 && cur.bytecode == Bytecode.POP2) {
				last.bytecode = Bytecode.LDC;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC3 && cur.bytecode == Bytecode.POP3) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if (last.bytecode == Bytecode.LDC4 && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.LDC3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC4 && cur.bytecode == Bytecode.POP2) {
				last.bytecode = Bytecode.LDC2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC4 && cur.bytecode == Bytecode.POP3) {
				last.bytecode = Bytecode.LDC;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.LDC4 && cur.bytecode == Bytecode.POP4) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			
			else if (last.bytecode == Bytecode.LOAD && cur.bytecode == Bytecode.LOAD && last.valueInt == cur.valueInt - 1) {
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
			
			else if (last.bytecode == Bytecode.MUL && cur.bytecode == Bytecode.ADD) {
				last.bytecode = Bytecode.MAD;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.MUL2 && cur.bytecode == Bytecode.ADD2) {
				last.bytecode = Bytecode.MAD2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.MUL3 && cur.bytecode == Bytecode.ADD3) {
				last.bytecode = Bytecode.MAD3;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.MUL4 && cur.bytecode == Bytecode.ADD4) {
				last.bytecode = Bytecode.MAD4;
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
			
			else if (last.bytecode == Bytecode.LDC && cur.bytecode == Bytecode.NEG) {
				last.valueFloat *= -1.0;
				instrs.remove(i);
				continue;
			}
			
			else if ((last.bytecode == Bytecode.DUP || last.bytecode == Bytecode.DUPS) && cur.bytecode == Bytecode.POP) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP || last.bytecode == Bytecode.DUPS) && cur.bytecode == Bytecode.POP2) {
				last.bytecode = Bytecode.POP;
				instrs.remove(i);
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP || last.bytecode == Bytecode.DUPS) && cur.bytecode == Bytecode.POP3) {
				last.bytecode = Bytecode.POP2;
				instrs.remove(i);
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP || last.bytecode == Bytecode.DUPS) && cur.bytecode == Bytecode.POP4) {
				last.bytecode = Bytecode.POP3;
				instrs.remove(i);
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP2 || last.bytecode == Bytecode.DUPS2) && cur.bytecode == Bytecode.POP2) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP2 || last.bytecode == Bytecode.DUPS2) && cur.bytecode == Bytecode.POP3) {
				last.bytecode = Bytecode.POP;
				instrs.remove(i);
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP2 || last.bytecode == Bytecode.DUPS2) && cur.bytecode == Bytecode.POP4) {
				last.bytecode = Bytecode.POP2;
				instrs.remove(i);
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP3 || last.bytecode == Bytecode.DUPS3) && cur.bytecode == Bytecode.POP3) {
				instrs.remove(i);
				instrs.remove(i-1);
				i--;
				continue;
			}
			else if ((last.bytecode == Bytecode.DUP3 || last.bytecode == Bytecode.DUPS3) && cur.bytecode == Bytecode.POP4) {
				last.bytecode = Bytecode.POP;
				instrs.remove(i);
				continue;
			}
			
			else if (last.bytecode == Bytecode.ADD && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.POP2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.SUB && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.POP2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.MUL && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.POP2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.DIV && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.POP2;
				instrs.remove(i);
				continue;
			}
			else if (last.bytecode == Bytecode.ATAN && cur.bytecode == Bytecode.POP) {
				last.bytecode = Bytecode.POP2;
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
