package whitesquare.glslcross.glslcompiler;

import java.util.HashMap;
import java.util.Map;

public class Variables {
	public int top = 0;
	Map<String, Variable> variables = new HashMap<String, Variable>();
	
	public Variables() {
	}
	
	public int getTop() {
		return top;
	}
	
	public Variable add(String name, Type type, boolean constant) {
		System.out.println("Allocated: " + top + "-" + (top+type.size-1) + " => " + name);
		Variable var = new Variable(top, type, constant);
		variables.put(name, var);
		top += type.size;
		return var;
	}
	
	public boolean find(String name) {
		return variables.containsKey(name);
	}
	
	public Variable get(String name) {
		return variables.get(name);
	}
	
	public int size() {
		return top;
	}
}