package whitesquare.glslcross.ast;

import java.util.ArrayList;

public class FunctionCall extends Value {
	public Function function;
	public ArrayList<Value> arguments = null;
	
	public FunctionCall(Function function, ArrayList<Value> arguments) {
		super(function.returnType);
		this.function = function;
		this.arguments = arguments;
	}
	
	public FunctionCall(Function function) {
		super(function.returnType);
		this.function = function;
		this.arguments = new ArrayList<Value>();
	}
	
	public FunctionCall(Function function, Value first) {
		super(function.returnType);
		this.function = function;
		this.arguments = new ArrayList<Value>();
		arguments.add(first);
	}
	
	public FunctionCall(Function function, Value first, Value second) {
		super(function.returnType);
		this.function = function;
		this.arguments = new ArrayList<Value>();
		arguments.add(first);
		arguments.add(second);
	}

	@Override
	public void visit(ASTVisitor visitor) {
		for (Value arg : arguments) arg.visit(visitor);
		visitor.visitFunctionCall(this);
	}
}
