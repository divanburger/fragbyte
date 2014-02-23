package whitesquare.glslcross.bytecode;

public enum Bytecode {
	LOAD(0, 0, 1), LOAD2(0, 0, 2), LOAD3(0, 0, 3), LOAD4(0, 0, 4),
	STORE(0, 1, 0), STORE2(0, 2, 0), STORE3(0, 3, 0), STORE4(0, 4, 0),
	POP(0, 1, 0), POP2(0, 2, 0), POP3(0, 3, 0), POP4(0, 4, 0),
	DUP(0, 1, 2), DUP2(0, 2, 4), DUP3(0, 3, 6),
	DUPS(0, 1, 2), DUPS2(0, 1, 3), DUPS3(0, 1, 4),
	LDC(1, 0, 1), LDC2(1, 0, 2), LDC3(1, 0, 3), LDC4(1, 0, 4), 
	NEG(0, 1, 1), NEG2(0, 2, 2), NEG3(0, 3, 3), NEG4(0, 4, 4),
	ADD(0, 2, 1), ADD2(0, 4, 2), ADD3(0, 6, 3), ADD4(0, 8, 4),
	SUB(0, 2, 1), SUB2(0, 4, 2), SUB3(0, 6, 3), SUB4(0, 8, 4),
	MUL(0, 2, 1), MUL2(0, 4, 2), MUL3(0, 6, 3), MUL4(0, 8, 4),
	MULS2(0, 3, 2), MULS3(0, 4, 3), MULS4(0, 5, 4),
	DIV(0, 2, 1), DIV2(0, 4, 2), DIV3(0, 6, 3), DIV4(0, 8, 4),
	MOD(0, 2, 1), MOD2(0, 4, 2), MOD3(0, 6, 3), MOD4(0, 8, 4),
	MAD(0, 3, 1), MAD2(0, 6, 2), MAD3(0, 9, 3), MAD4(0,12, 4),
	SIN(0, 1, 1), SIN2(0, 2, 2), SIN3(0, 3, 3), SIN4(0, 4, 4),
	COS(0, 1, 1), COS2(0, 2, 2), COS3(0, 3, 3), COS4(0, 4, 4),
	POW(0, 2, 1), POW2(0, 4, 2), POW3(0, 6, 3), POW4(0, 8, 4),
	ATAN(0, 2, 1),
	SQRT(0, 1, 1),
	RCP(0, 1, 1),
	EXP(0, 1, 1),
	FRACT(0, 1, 1), FRACT2(0, 2, 2), FRACT3(0, 3, 3), FRACT4(0, 4, 4),
	FLOOR(0, 1, 1), FLOOR2(0, 2, 2), FLOOR3(0, 3, 3), FLOOR4(0, 4, 4),
	CEIL(0, 1, 1), CEIL2(0, 2, 2), CEIL3(0, 3, 3), CEIL4(0, 4, 4),
	LEN(0, 1, 1), LEN2(0, 2, 1), LEN3(0, 3, 1), LEN4(0, 4, 1),
	ABS(0, 1, 1), ABS2(0, 2, 2), ABS3(0, 3, 3), ABS4(0, 4, 4),
	MIN(0, 2, 1), MIN2(0, 4, 2), MIN3(0, 6, 3), MIN4(0, 8, 4),
	MAX(0, 2, 1), MAX2(0, 4, 2), MAX3(0, 6, 3), MAX4(0, 8, 4),
	MIX(0, 3, 1), MIX2(0, 6, 2), MIX3(0, 9, 3), MIX4(0,12, 4),
	MIXS2(0, 5, 2), MIXS3(0, 7, 3), MIXS4(0, 9, 4),
	CLAMP(0, 3, 1), CLAMP2(0, 6, 2), CLAMP3(0, 9, 3), CLAMP4(0, 12, 4),
	STEP(0, 2, 1),
	SMOOTHSTEP(0, 3, 1),
	SMOOTHSTEPR(0, 3, 1),
	NORM(0, 1, 1), NORM3(0, 3, 3), NORM4(0, 4, 4), 
	DP(0, 2, 1), DP2(0, 4, 1), DP3(0, 6, 1), DP4(0, 8, 1),
	CROSS(0, 2, 1), CROSS3(0, 6, 3),
	CALL(1), FUNC(), RETURN(),
	REPEAT(1), ENDREPEAT(),
	OUT(), IN(), SLOTS(1), STACK(1);
	
	public int ops = 0;
	public int stackIn = 0;
	public int stackOut = 0;
	
	Bytecode() {}
	Bytecode(int ops) {this.ops = ops;}
	Bytecode(int ops, int in, int out) {this.ops = ops; this.stackIn = in; this.stackOut = out;}
	
	public boolean isLoad() {
		return name().startsWith("LOAD");
	}
	
	public boolean isLoadConst() {
		return name().startsWith("LDC");
	}
	
	public boolean isStore() {
		return name().startsWith("STORE");
	}
	
	public int getWidth() {
		char c = name().charAt(name().length()-1);
		if (c == '2') return 2;
		if (c == '3') return 3;
		if (c == '4') return 4;
		return 1;
	}
}
