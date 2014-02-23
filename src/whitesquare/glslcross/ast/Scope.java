package whitesquare.glslcross.ast;

import java.util.ArrayList;

public class Scope extends Node {
	public ArrayList<Node> nodes = new ArrayList<>();
	
	@Override
	public void print(String indent) {
		System.out.println(indent + "[scope]");
		for (Node node : nodes) node.print(indent + "\t");
	}
	
	@Override
	public void visit(ASTVisitor visitor) {
		for (Node node : nodes) node.visit(visitor);
	}
}
