package whitesquare.glslcross.ast.optimizers;

import whitesquare.glslcross.ast.Node;

public interface ASTOptimizer {
	public boolean optimize(Node ast);
}
