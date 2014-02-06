package whitesquare.glslcross.bytecode.optimizers;

import whitesquare.glslcross.bytecode.Program;

public interface BytecodeOptimizer {
	public boolean optimize(Program program);
}
