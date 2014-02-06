package whitesquare.glslcross.glslcompiler;

import java.util.Stack;

import whitesquare.glslcross.ast.Node;
import whitesquare.glslcross.ast.Scope;

class ScopeManager {
	private Stack<Scope> scopes = new Stack<>();
	
	public Scope getScope() {
		return scopes.peek();
	}
		
	public void add(Node node) {
		getScope().nodes.add(node);
	}
	
	public void pushScope(Scope scope) {
		if (!scopes.isEmpty()) getScope().nodes.add(scope);
		scopes.push(scope);
	}
	
	public void popScope() {
		scopes.pop();
	}
}
