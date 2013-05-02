#ifndef Bytecode_h
#define Bytecode_h

enum Bytecode : uint8_t {
	LOAD, LOAD2, LOAD3, LOAD4,
	STORE, STORE2, STORE3, STORE4,
	POP, POP2, POP3, POP4,
	DUP, DUP2, DUP3,
	DUPS, DUPS2, DUPS3,
	LDC, LDC2, LDC3, LDC4,
	NEG, NEG2, NEG3, NEG4,
	SQRT,
	RCP,
	ADD, ADD2, ADD3, ADD4,
	SUB, SUB2, SUB3, SUB4,
	MUL, MUL2, MUL3, MUL4,
	DIV, DIV2, DIV3, DIV4,
	MOD, MOD2, MOD3, MOD4,
	MAD, MAD2, MAD3, MAD4,
	SIN, SIN2, SIN3, SIN4,
	COS, COS2, COS3, COS4,
	ATAN,
	MIN, MIN2, MIN3, MIN4,
	MAX, MAX2, MAX3, MAX4,
	MIX, MIX2, MIX3, MIX4,
	ABS, ABS2, ABS3, ABS4,
	STEP,	
	SMOOTHSTEP,
	SMOOTHSTEPR,
	LEN, LEN2, LEN3, LEN4,
	DP2, DP3, DP4,
	NORM3, NORM4,
	CALL, FUNC, RETURN,
	OUT, IN, SLOTS, STACK,
	REPEAT, ENDREPEAT,
	MAX_BYTECODE
};

struct Instruction {
	Instruction(Bytecode bytecode)
		: bytecode(bytecode) {}
	Instruction(Bytecode bytecode, float value)
		: bytecode(bytecode), fvalue(value) {}
	Instruction(Bytecode bytecode, int value)
		: bytecode(bytecode), ivalue(value) {}

	Bytecode	bytecode;
	union {
		int 	ivalue;
		float	fvalue;
	};
};

#endif