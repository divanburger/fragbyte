package whitesquare.glslcross.glslcompiler;

import whitesquare.glslcross.bytecode.Bytecode;

public class Swizzle {
	public Type		inType;
	public int		size;
	public int[]	indices = new int[4];
	
	public Swizzle(Type inType, String swizzle) {
		this.inType = inType;
		this.size = swizzle.length();
		
		for (int i = 0; i < size; i++) {
			switch (swizzle.charAt(i)) {
				case 'x':
				case 'r':
				case 's':
					indices[i] = 0;
					break;
				case 'y':
				case 'g':
				case 't':
					indices[i] = 1;
					break;
				case 'z':
				case 'b':
				case 'p':
					indices[i] = 2;
					break;
				case 'w':
				case 'a':
				case 'q':
					indices[i] = 3;
					break;
			}
		}
	}
	
	public boolean isValid() {
		return (size >= 1 && size <= inType.size);
	}
	
	public void writeShift(BytecodeWriter writer, Variable tempVar) {
		boolean isLinear = true;
		
		for (int i = 0; i < size; i++) {
			if (indices[i] != i)
				isLinear = false;
		}
		
		if (isLinear) {
			for (int i = size; i < inType.size; i++)
				writer.write(Bytecode.POP);
		} else {
			writer.store(tempVar, 0, inType.size);
			
			for (int i = 0; i < size; i++) {
				writer.load(tempVar, indices[i], 1);
			}
		}
	}
	
	public void writeStore(BytecodeWriter writer, Variable var) {
		boolean isLinear = true;
		
		for (int i = 0; i < size; i++) {
			if (indices[i] != i)
				isLinear = false;
		}
		
		if (isLinear) {
			writer.store(var, 0, size);
		} else {
			for (int i = 0; i < size; i++) {
				writer.store(var, indices[i], 1);
			}
		}
	}
	
	public void writeLoad(BytecodeWriter writer, Variable var) {
		boolean isLinear = true;
		
		for (int i = 0; i < size; i++) {
			if (indices[i] != i)
				isLinear = false;
		}
		
		if (isLinear) {
			writer.load(var, 0, size);
		} else {
			for (int i = 0; i < size; i++) {
				writer.load(var, indices[i], 1);
			}
		}
	}
	
	public Value getValue() {
		return new Value(new Type(size, inType.integer));
	}
}
