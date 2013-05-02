package whitesquare.glslcross.bytecode;

public class ProgramParameter {
	public enum Type {IN, OUT};
	public Type type;
	public int slot;
	public int size;
	public String name;
	
	ProgramParameter(Type type, int slot, int size, String name) {
		this.type = type;
		this.slot = slot;
		this.size = size;
		this.name = name;
	}
}
