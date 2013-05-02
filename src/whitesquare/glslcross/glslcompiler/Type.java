package whitesquare.glslcross.glslcompiler;

public class Type {
	public String name;
	public int size;
	public boolean integer;
	
	public Type(int size, boolean integer)
	{
		this.size = size;
		this.integer = integer;
		
		if (size == 1) {
			this.name = integer ? "int" : "float";
		} else {
			this.name = (integer ? "i" : "") + "vec" + this.size;
		}
	}	
	
	public Type(String name, int size, boolean integer)
	{
		this.name = name;
		this.size = size;
		this.integer = integer;
	}
	
	public boolean isCompatible(Type type) {
		return (size == type.size || size == 1) && (integer == type.integer);
	}
	
	@Override
	public String toString() {
		return name;
	}
}
