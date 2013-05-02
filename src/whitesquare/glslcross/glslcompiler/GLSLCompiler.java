package whitesquare.glslcross.glslcompiler;

import java.io.IOException;

import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.CommonTokenStream;

import whitesquare.glslcross.bytecode.Program;
import whitesquare.glslcross.bytecode.analyzer.StackAnalyzer;
import whitesquare.glslcross.bytecode.optimizers.CombinerOptimizer;
import whitesquare.glslcross.bytecode.optimizers.Optimizer;
import whitesquare.glslcross.bytecode.optimizers.StackOptimizer;
import whitesquare.glslcross.bytecode.optimizers.StoreLoadOptimizer;
import whitesquare.glslcross.bytecode.optimizers.UnusedSlotOptimizer;
import whitesquare.glslcross.glslcompiler.GLSLLexer;
import whitesquare.glslcross.glslcompiler.GLSLParser;

public class GLSLCompiler {
	public String prefix = "tests/test3"; 
	
	public GLSLCompiler() {
		parse(prefix + ".glsl");
	}
	
	public void optimize(Program program) {
		Optimizer part1 = new StoreLoadOptimizer();
		Optimizer part2 = new UnusedSlotOptimizer();
		Optimizer part3 = new StackOptimizer();
		Optimizer part4 = new CombinerOptimizer();
		
		System.out.println("Before optimization: " + program.instructions.size() + " instr - " + program.maxSlots + " slots");
		
		for (int i = 0; i < 2; i++) {
			boolean changes = part1.optimize(program);
			changes |= part2.optimize(program);
			changes |= part3.optimize(program);
			changes |= part4.optimize(program);
			System.out.println("After phase " + i + ": " + program.instructions.size() + " instr - " + program.maxSlots + " slots");
			if (!changes) break;
		}
	}
	
	public void parse(String filename) {
		System.out.println("Compiling: " + filename);
		
		try {
			ANTLRFileStream stream = new ANTLRFileStream(filename);
			GLSLLexer lexer = new GLSLLexer(stream);
			GLSLParser parser = new GLSLParser(new CommonTokenStream(lexer));
			
			BytecodeWriter bytecodeWriter = new BytecodeWriter();
			
			parser.setBytecodeWriter(bytecodeWriter);
			parser.glsl();
			
			Program program = bytecodeWriter.getProgram();
			
			StackAnalyzer stackAnalyzer = new StackAnalyzer(false);
			if (!stackAnalyzer.analyze(program)) {
				System.out.println("Resulting program is invalid!!! (Before optimization)");
				return;
			}

			program.setMaxStack(stackAnalyzer.maxStack);
			program.writeOut(prefix + "_orig.byte");
			
			optimize(program);
			
			StackAnalyzer stackAnalyzerOpt = new StackAnalyzer(true);
			boolean valid = stackAnalyzerOpt.analyze(program);
			
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
