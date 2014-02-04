package whitesquare.glslcross.ast;

public class Function {
	public String name;
	public Type returnType;
	
	public Function(String name, Type returnType) {
		this.name = name;
		this.returnType = returnType;
	}
}
