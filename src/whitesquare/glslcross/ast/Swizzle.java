package whitesquare.glslcross.ast;

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
	
	public Type getType() {
		return new Type(size, inType.integer);
	}
	
	@Override
	public String toString() {
		String str = ".";
		for (int i = 0; i < size; i++) {
			int index = indices[i];
			str += (index == 0 ? "x" : (index == 1 ? "y" : (index == 2 ? "z" : "w")));
		}
		return str;
	}
}
