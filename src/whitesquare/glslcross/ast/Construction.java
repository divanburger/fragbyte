package whitesquare.glslcross.ast;

import java.util.ArrayList;

public class Construction extends Value {
	public ArrayList<Value> arguments = null;
	
	public Construction(Type type, ArrayList<Value> arguments) {
		super(type);
		this.arguments = arguments;
	}
	
	public Construction(Type type) {
		super(type);
		this.arguments = new ArrayList<Value>();
	}
	
	public Construction(Type type, Value first) {
		super(type);
		this.arguments = new ArrayList<Value>();
		arguments.add(first);
	}
	
	public Construction(Type type, Value first, Value second) {
		super(type);
		this.arguments = new ArrayList<Value>();
		arguments.add(first);
		arguments.add(second);
	}

	@Override
	public void visit(ASTVisitor visitor) {
		for (Value arg : arguments) arg.visit(visitor);
		visitor.visitConstruction(this);
	}
	
	@Override
	public String toString() {
		String str = "(" + type.toString();
		for (Value arg : arguments) str += " " + arg.toString();
		return str + ")";
	}
}
