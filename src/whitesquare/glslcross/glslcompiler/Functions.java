package whitesquare.glslcross.glslcompiler;

import java.util.HashMap;
import java.util.Map;

import whitesquare.glslcross.ast.Function;
import whitesquare.glslcross.ast.Type;

class Functions {
	Map<String, Function> functions = new HashMap<String, Function>();
	
	public Functions() {
		
	}
	
	Function add(String name, Type returnType, int inputSize) {
		Function var = new Function(name, returnType, inputSize);
		functions.put(name, var);
		return var;
	}
	
	boolean find(String name) {
		return functions.containsKey(name);
	}
	
	Function get(String name) {
		return functions.get(name);
	}
}
