package whitesquare.glslcross.ast;

public class Variable extends Value {
	public String name;
	public int slot;
	
	public Variable(String name, int slot, Type type, boolean constant) {
		super(type, constant);
		this.name = name;
		this.slot = slot;
	}	
	
	public Variable(int slot, Type type, boolean constant) {
		super(type, constant);
		this.name = "_slot" + slot;
		this.slot = slot;
	}
	
	public Variable(int slot, Type type) {
		this(slot, type, false);
		this.name = "_slot" + slot;
	}
	
	@Override
	public void print(String indent) {
		System.out.println(indent + "[var] " + name);
	}
	
	@Override
	public String toString() {
		String str = "<" + name + " : " + type.toString();
		if (constant) str += " const";
		return str + ">";
	}
}
