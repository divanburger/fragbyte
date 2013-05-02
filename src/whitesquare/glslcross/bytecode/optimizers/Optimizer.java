package whitesquare.glslcross.bytecode.optimizers;

import whitesquare.glslcross.bytecode.Program;

public interface Optimizer {
	public boolean optimize(Program program);
}
