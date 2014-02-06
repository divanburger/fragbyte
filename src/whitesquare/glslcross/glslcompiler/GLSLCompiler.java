package whitesquare.glslcross.glslcompiler;

import java.io.IOException;
import java.util.ArrayList;

import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.CommonTokenStream;

import whitesquare.glslcross.ast.Node;
import whitesquare.glslcross.ast.Unit;
import whitesquare.glslcross.ast.Variable;
import whitesquare.glslcross.ast.optimizers.ASTOptimizer;
import whitesquare.glslcross.ast.optimizers.OrderOptimizer;
import whitesquare.glslcross.bytecode.Program;
import whitesquare.glslcross.bytecode.analyzer.StackAnalyzer;
import whitesquare.glslcross.bytecode.optimizers.BlockOptimizer;
import whitesquare.glslcross.bytecode.optimizers.CombinerOptimizer;
import whitesquare.glslcross.bytecode.optimizers.BytecodeOptimizer;
import whitesquare.glslcross.bytecode.optimizers.StackOptimizer;
import whitesquare.glslcross.bytecode.optimizers.StoreLoadOptimizer;
import whitesquare.glslcross.bytecode.optimizers.UnusedSlotOptimizer;
import whitesquare.glslcross.glslcompiler.GLSLLexer;
import whitesquare.glslcross.glslcompiler.GLSLParser;

public class GLSLCompiler {
	public String prefix = "tests/test2"; 
	
	public GLSLCompiler() {
		parse(prefix + ".glsl");
	}
	
	public void optimizeAST(Node ast) {
		ASTOptimizer orderOptimizer = new OrderOptimizer();
		orderOptimizer.optimize(ast);
	}
	
	public void optimize(Program program) {
		ArrayList<BytecodeOptimizer> bytecodeOptimizers = new ArrayList<BytecodeOptimizer>();
		
		bytecodeOptimizers.add(new StoreLoadOptimizer());
		bytecodeOptimizers.add(new UnusedSlotOptimizer());
		//bytecodeOptimizers.add(new StackOptimizer());
		bytecodeOptimizers.add(new CombinerOptimizer());
		bytecodeOptimizers.add(new BlockOptimizer());
		
		System.out.println("Before optimization: " + program.instructions.size() + " instr - " + program.maxSlots + " slots");
		
		phaseLoop: for (int i = 0; i < 32; i++) {
			boolean changes = false;
			for (BytecodeOptimizer bytecodeOptimizer : bytecodeOptimizers) {
				changes |= bytecodeOptimizer.optimize(program);
			
				StackAnalyzer stackAnalyzer = new StackAnalyzer(false);
				if (!stackAnalyzer.analyze(program)) {
					System.out.println("Resulting program is invalid!!! (Phase " + i + " : " + BytecodeOptimizer.class.getName() + ")");
					break phaseLoop;
				}
			}
			
			System.out.println("After phase " + i + ": " + program.instructions.size() + " instr - " + program.maxSlots + " slots");
			if (!changes) break;
		}
	}
	
	public void parse(String filename) {
		System.out.println("Compiling: " + filename);
		
		LogWriter log = new LogWriter();
		
		try {
			ANTLRFileStream stream = new ANTLRFileStream(filename);
			GLSLLexer lexer = new GLSLLexer(stream);
			GLSLParser parser = new GLSLParser(new CommonTokenStream(lexer));
			
			parser.glsl();
			Unit unit = parser.getUnit();
						
			Variables variables = parser.getVariables();
			Variable tempVar = variables.add("__tempf", unit.getType("vec4"), false);
			
			optimizeAST(unit);
			
			BytecodeWriter bytecodeWriter = new BytecodeWriter();
			BytecodeVisitor visitor = new BytecodeVisitor(bytecodeWriter, log, tempVar);
			unit.visit(visitor);
			
			bytecodeWriter.getProgram().setMaxSlots(variables.size());
			
			Program program = bytecodeWriter.getProgram();
			program.writeOut(prefix + "_pre.byte");
			
			StackAnalyzer stackAnalyzer = new StackAnalyzer(true);
			if (!stackAnalyzer.analyze(program)) {
				System.out.println("Resulting program is invalid!!! (Before optimization)");
				return;
			}

			program.setMaxStack(stackAnalyzer.maxStack);
			program.writeOut(prefix + "_orig.byte");
			
			optimize(program);
			
			StackAnalyzer stackAnalyzerOpt = new StackAnalyzer(true);
			boolean valid = stackAnalyzerOpt.analyze(program);
			
			System.out.println("Final output : " + program.instructions.size() + " instr - " + program.maxSlots + " slots");
			
			if (!valid) {
				System.out.println("Resulting program is invalid!!!");
			} else {
				program.setMaxStack(stackAnalyzerOpt.maxStack);
				program.writeOut(prefix + ".byte");
			}
			
			System.out.println("Done");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		new GLSLCompiler();
	}
}
