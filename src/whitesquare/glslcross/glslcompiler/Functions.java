package whitesquare.glslcross.glslcompiler;

import java.util.HashMap;
import java.util.Map;

public class Functions {
	Map<String, Function> functions = new HashMap<String, Function>();
	
	public Functions() {
		
	}
	
	Function add(String name, Type returnType) {
		Function var = new Function(name, returnType);
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
