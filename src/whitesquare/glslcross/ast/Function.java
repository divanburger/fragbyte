package whitesquare.glslcross.ast;

import java.util.ArrayList;

public class Function extends Scope {
	public String name;
	public Type returnType;
	
	public ArrayList<Parameter> parameters = new ArrayList<>();
	
	public int inputSize;
	public int outputSize;
	
	public Function(String name, Type returnType, int inputSize) {
		this.name = name;
		this.returnType = returnType;
		this.inputSize = inputSize;
		this.outputSize = returnType.size;
	}
	
	@Override
	public void print(String indent) {
		System.out.println(indent + "[func] " + name);
		for (Node node : nodes) node.print(indent + "\t");
	}
	
	@Override
	public void visit(ASTVisitor visitor) {
		visitor.visitFunctionBegin(this);
		for (Parameter parameter : parameters) parameter.visit(visitor);
		visitor.visitFunctionMid(this);
		for (Node node : nodes) node.visit(visitor);
		visitor.visitFunctionEnd(this);
	}
}
