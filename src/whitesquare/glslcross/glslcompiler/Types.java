package whitesquare.glslcross.glslcompiler;

import java.util.HashMap;
import java.util.Map;

import whitesquare.glslcross.ast.Type;

public class Types {
	Map<String, Type> types = new HashMap<String, Type>();
	
	public Types() {
		
	}
	
	Type add(String name, int size, boolean integer) {
		Type type = new Type(name, size, integer);
		types.put(name, type);
		return type;
	}
	
	boolean find(String name) {
		return types.containsKey(name);
	}
	Type get(String name) {
		return types.get(name);
	}
}
