package whitesquare.glslcross.ast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Unit extends Scope {
	public ArrayList<Variable> inputs = new ArrayList<>();
	public ArrayList<Variable> outputs = new ArrayList<>();
	
	private Map<String, Type> types = new HashMap<String, Type>();
	
	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitUnitStart(this);
		for (Node node : nodes) node.visit(visitor);
		visitor.visitUnitEnd(this);
	}
		
	public Type addType(String name, int size, boolean integer) {
		Type type = new Type(name, size, integer);
		types.put(name, type);
		return type;
	}
	
	public boolean hasType(String name) {
		return types.containsKey(name);
	}
	
	public Type getType(String name) {
		return types.get(name);
	}
}
