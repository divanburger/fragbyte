#ifndef VM_h
#define VM_h

#include <stack>
#include <cmath>
#include <cstring>

#include <sys/time.h>

#include "Program.h"

struct VM {
	VM(Program& program, int instances) 
		: program(program), instances(instances) {
		cout << "Memory usage estimate: " << (instances * (program.maxStack + program.maxSlots) * sizeof(float) / 1024) << "kB" << endl;

		stack = (float*)calloc(instances * program.maxStack, sizeof(float));
		slots = (float*)calloc(instances * program.maxSlots, sizeof(float));

		for (int i = 0; i < Bytecode::MAX_BYTECODE; i++) {
			scount[i] = 0;
			tcount[i] = 0.0;
		}

		reset();
	}

	~VM() {
		free(stack);
		free(slots);

		for (int i = 0; i < Bytecode::MAX_BYTECODE; i++) {
			double avg = tcount[i] / scount[i];
			cout << i << ": " << avg << "ms (" << scount[i] << ", " << tcount[i] << "ms)" << endl;
		}
	}

	void reset() {
		sp = 0;
		ip = program.functions.find("main")->second;
		done = false;
	}

	bool step() {
		timespec ts;

		clock_gettime(CLOCK_REALTIME, &ts);
		uint64_t start = (uint64_t)ts.tv_sec * 1000000LL + (uint64_t)ts.tv_nsec / 1000LL;

		bool res = doInstr();

		timespec ts_end;
		clock_gettime(CLOCK_REALTIME, &ts);
		uint64_t end = (uint64_t)ts.tv_sec * 1000000LL + (uint64_t)ts.tv_nsec / 1000LL;

		Bytecode b = program.instructions[ip].bytecode;
		scount[b]++;
		tcount[b] += (end - start) * 0.001;

		return res;
	}

	bool doInstr() {
		const Instruction& instr = program.instructions[ip];
		
		/*cout << endl;
		cout << "IP: " << ip << " \tSP: " << sp << endl;

		if (sp + 4 >= MAX_STACK_SIZE) {
			cout << "Error: stack nearly full" << endl;
			return false;
		}

		cout << "ST > ";
		for (int i = 0; i < sp; i++)
			cout << stack[i*instances] << " ";
		cout << endl;

		cout << "SL > ";
		for (int i = 0; i < program.maxSlots; i++)
			cout << slots[i*instances] << " ";
		cout << endl;*/

		switch (instr.bytecode) {
			case Bytecode::LDC:
				//cout << "LDC " << instr.fvalue << endl;
				for (int i = 0; i < instances; i++) {
					stack[i+sp*instances] = instr.fvalue;
				}
				sp++;
				break;
			case Bytecode::LDC2:
				//cout << "LDC2 " << instr.fvalue << endl;
				for (int i = 0; i < instances*2; i++) {
					stack[i+sp*instances] = instr.fvalue;
				}
				sp+=2;
				break;
			case Bytecode::LDC3:
				//cout << "LDC3 " << instr.fvalue << endl;
				for (int i = 0; i < instances*3; i++) {
					stack[i+sp*instances] = instr.fvalue;
				}
				sp+=3;
				break;
			case Bytecode::LDC4:
				//cout << "LDC4 " << instr.fvalue << endl;
				for (int i = 0; i < instances*4; i++) {
					stack[i+sp*instances] = instr.fvalue;
				}
				sp+=4;
				break;
			case Bytecode::POP:
				//cout << "POP" << endl;
				sp--;
				break;
			case Bytecode::POP2:
				//cout << "POP" << endl;
				sp-=2;
				break;
			case Bytecode::POP3:
				//cout << "POP" << endl;
				sp-=3;
				break;
			case Bytecode::POP4:
				//cout << "POP" << endl;
				sp-=4;
				break;
			case Bytecode::DUPS:
			case Bytecode::DUP:
				//cout << "DUP" << endl;
				memcpy(&stack[sp*instances], &stack[(sp-1)*instances], sizeof(float)*instances);
				sp++;
				break;
			case Bytecode::DUP2:
				//cout << "DUP2" << endl;
				memcpy(&stack[sp*instances], &stack[(sp-2)*instances], sizeof(float)*instances*2);
				sp+=2;
				break;
			case Bytecode::DUP3:
				//cout << "DUP3" << endl;
				memcpy(&stack[sp*instances], &stack[(sp-3)*instances], sizeof(float)*instances*3);
				sp+=3;
				break;
			case Bytecode::DUPS2:
				//cout << "DUPS2" << endl;
				memcpy(&stack[sp*instances], &stack[(sp-1)*instances], sizeof(float)*instances);
				memcpy(&stack[(sp+1)*instances], &stack[(sp-1)*instances], sizeof(float)*instances);
				sp+=2;
				break;
			case Bytecode::DUPS3:
				//cout << "DUPS3" << endl;
				memcpy(&stack[sp*instances], &stack[(sp-1)*instances], sizeof(float)*instances);
				memcpy(&stack[(sp+1)*instances], &stack[(sp-1)*instances], sizeof(float)*instances);
				memcpy(&stack[(sp+2)*instances], &stack[(sp-1)*instances], sizeof(float)*instances);
				sp+=3;
				break;
			case Bytecode::NEG:
				//cout << "NEG" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-1*instances] *= -1.0f;
				}
				break;
			case Bytecode::NEG2:
				//cout << "NEG2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] *= -1.0f;
				}
				break;
			case Bytecode::NEG3:
				//cout << "NEG3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] *= -1.0f;
				}
				break;
			case Bytecode::NEG4:
				//cout << "NEG4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] *= -1.0f;
				}
				break;
			case Bytecode::SQRT:
				//cout << "SQRT" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-1*instances] = sqrtf(stack[st-1*instances]);
				}
				break;
			case Bytecode::RCP:
				//cout << "RCP" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-1*instances] = 1.0f / stack[st-1*instances];
				}
				break;
			case Bytecode::SIN:
				//cout << "SIN" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-1*instances] = sin(stack[st-1*instances]);
				}
				break;
			case Bytecode::SIN2:
				//cout << "SIN2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] = sin(stack[st-2*instances]);
				}
				break;
			case Bytecode::SIN3:
				//cout << "SIN3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] = sin(stack[st-3*instances]);
				}
				break;
			case Bytecode::SIN4:
				//cout << "SIN4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] = sin(stack[st-4*instances]);
				}
				break;
			case Bytecode::COS:
				//cout << "COS" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-1*instances] = cos(stack[st-1*instances]);
				}
				break;
			case Bytecode::COS2:
				//cout << "COS2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] = cos(stack[st-2*instances]);
				}
				break;
			case Bytecode::COS3:
				//cout << "COS3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] = cos(stack[st-3*instances]);
				}
				break;
			case Bytecode::COS4:
				//cout << "COS4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] = cos(stack[st-4*instances]);
				}
				break;
			case Bytecode::ATAN:
				//cout << "ATAN" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-1*instances];
					float b = stack[st-2*instances];
					stack[st-2*instances] = atan2(a, b);
				}
				sp--;
				break;
			case Bytecode::LEN2:
				//cout << "LEN2" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-1*instances];
					float b = stack[st-2*instances];
					stack[st-2*instances] = sqrtf(a*a+b*b);
				}
				sp--;
				break;
			case Bytecode::LEN3:
				//cout << "LEN3" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-1*instances];
					float b = stack[st-2*instances];
					float c = stack[st-3*instances];
					stack[st-3*instances] = sqrtf(a*a+b*b+c*c);
				}
				sp-=2;
				break;
			case Bytecode::LEN4:
				//cout << "LEN4" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-1*instances];
					float b = stack[st-2*instances];
					float c = stack[st-3*instances];
					float d = stack[st-4*instances];
					stack[st-4*instances] = sqrtf(a*a+b*b+c*c+d*d);
				}
				sp-=3;
				break;
			case Bytecode::ADD:
				//cout << "ADD" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] += stack[st-1*instances];
				}
				sp--;
				break;
			case Bytecode::ADD2:
				//cout << "ADD2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] += stack[st-2*instances];
				}
				sp-=2;
				break;
			case Bytecode::ADD3:
				//cout << "ADD3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-6*instances] += stack[st-3*instances];
				}
				sp-=3;
				break;
			case Bytecode::ADD4:
				//cout << "ADD4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-8*instances] += stack[st-4*instances];
				}
				sp-=4;
				break;
			case Bytecode::SUB:
				//cout << "SUB" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] -= stack[st-1*instances];
				}
				sp--;
				break;
			case Bytecode::SUB2:
				//cout << "SUB2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] -= stack[st-2*instances];
				}
				sp-=2;
				break;
			case Bytecode::SUB3:
				//cout << "SUB3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-6*instances] -= stack[st-3*instances];
				}
				sp-=3;
				break;
			case Bytecode::SUB4:
				//cout << "SUB4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-8*instances] -= stack[st-4*instances];
				}
				sp-=4;
				break;
			case Bytecode::MUL:
				//cout << "MUL" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] *= stack[st-1*instances];
				}
				sp--;
				break;
			case Bytecode::MUL2:
				//cout << "MUL2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] *= stack[st-2*instances];
				}
				sp-=2;
				break;
			case Bytecode::MUL3:
				//cout << "MUL3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-6*instances] *= stack[st-3*instances];
				}
				sp-=3;
				break;
			case Bytecode::MUL4:
				//cout << "MUL4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-8*instances] *= stack[st-4*instances];
				}
				sp-=4;
				break;
			case Bytecode::DIV:
				//cout << "DIV" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] /= stack[st-1*instances];
				}
				sp--;
				break;
			case Bytecode::DIV2:
				//cout << "DIV2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] /= stack[st-2*instances];
				}
				sp-=2;
				break;
			case Bytecode::DIV3:
				//cout << "DIV3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-6*instances] /= stack[st-3*instances];
				}
				sp-=3;
				break;
			case Bytecode::DIV4:
				//cout << "DIV4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-8*instances] /= stack[st-4*instances];
				}
				sp-=4;
				break;
			case Bytecode::MOD:
				//cout << "MOD" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					modStore(stack[st-2*instances], stack[st-1*instances]);
				}
				sp--;
				break;
			case Bytecode::MOD2:
				//cout << "MOD2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					modStore(stack[st-4*instances], stack[st-2*instances]);
				}
				sp-=2;
				break;
			case Bytecode::MOD3:
				//cout << "MOD3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					modStore(stack[st-6*instances], stack[st-3*instances]);
				}
				sp-=3;
				break;
			case Bytecode::MOD4:
				//cout << "MOD4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					modStore(stack[st-8*instances], stack[st-4*instances]);
				}
				sp-=4;
				break;
			case Bytecode::MAD:
				//cout << "MAD" << endl;
				sp-=2;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-instances] += stack[st+instances] * stack[st];
				}
				break;
			case Bytecode::MAD2:
				//cout << "MAD2" << endl;
				sp-=4;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] += stack[st+2*instances] * stack[st];
				}
				break;
			case Bytecode::MAD3:
				//cout << "MAD3" << endl;
				sp-=6;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] += stack[st+3*instances] * stack[st];
				}
				break;
			case Bytecode::MAD4:
				//cout << "MAD4" << endl;
				sp-=8;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] += stack[st+4*instances] * stack[st];
				}
				break;
			case Bytecode::MIN:
				//cout << "MIN" << endl;
				sp--;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-instances] = min(stack[st-instances], stack[st]);
				}
				break;
			case Bytecode::MIN2:
				//cout << "MIN2" << endl;
				sp-=2;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] = min(stack[st-2*instances], stack[st]);
				}
				break;
			case Bytecode::MIN3:
				//cout << "MIN3" << endl;
				sp-=3;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] = min(stack[st-3*instances], stack[st]);
				}
				break;
			case Bytecode::MIN4:
				//cout << "MIN4" << endl;
				sp-=4;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] = min(stack[st-4*instances], stack[st]);
				}
				break;
			case Bytecode::MAX:
				//cout << "MAX" << endl;
				sp--;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-instances] = max(stack[st-instances], stack[st]);
				}
				break;
			case Bytecode::MAX2:
				//cout << "MAX2" << endl;
				sp-=2;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] = max(stack[st-2*instances], stack[st]);
				}
				break;
			case Bytecode::MAX3:
				//cout << "MAX3" << endl;
				sp-=3;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] = max(stack[st-3*instances], stack[st]);
				}
				break;
			case Bytecode::MAX4:
				//cout << "MAX4" << endl;
				sp-=4;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] = max(stack[st-4*instances], stack[st]);
				}
				break;
			case Bytecode::MIX:
				//cout << "MIX" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float v1, v2, vf;
					v1 = stack[st-3*instances];
					v2 = stack[st-2*instances];
					vf = stack[st-1*instances];
					stack[st-3*instances] = v1 + (v2-v1)*vf;
				}
				sp-=2;
				break;
			case Bytecode::MIX2:
				//cout << "MIX2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					float v1, v2, vf;
					v1 = stack[st-6*instances];
					v2 = stack[st-4*instances];
					vf = stack[st-2*instances];
					stack[st-6*instances] = v1 + (v2-v1)*vf;
				}
				sp-=4;
				break;
			case Bytecode::MIX3:
				//cout << "MIX3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					float v1, v2, vf;
					v1 = stack[st-9*instances];
					v2 = stack[st-6*instances];
					vf = stack[st-3*instances];
					stack[st-9*instances] = v1 + (v2-v1)*vf;
				}
				sp-=6;
				break;
			case Bytecode::MIX4:
				//cout << "MIX4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					float v1, v2, vf;
					v1 = stack[st-12*instances];
					v2 = stack[st-8*instances];
					vf = stack[st-4*instances];
					stack[st-12*instances] = v1 + (v2-v1)*vf;
				}
				sp-=8;
				break;
			case Bytecode::ABS:
				//cout << "ABS" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					stack[st-1*instances] = fabs(stack[st-1*instances]);
				}
				break;
			case Bytecode::ABS2:
				//cout << "ABS2" << endl;
				for (int i = 0; i < instances*2; i++)
				{
					int st = i+sp*instances;
					stack[st-2*instances] = fabs(stack[st-2*instances]);
				}
				break;
			case Bytecode::ABS3:
				//cout << "ABS3" << endl;
				for (int i = 0; i < instances*3; i++)
				{
					int st = i+sp*instances;
					stack[st-3*instances] = fabs(stack[st-3*instances]);
				}
				break;
			case Bytecode::ABS4:
				//cout << "ABS4" << endl;
				for (int i = 0; i < instances*4; i++)
				{
					int st = i+sp*instances;
					stack[st-4*instances] = fabs(stack[st-4*instances]);
				}
				break;
			case Bytecode::STEP:
				//cout << "STEP" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float v1, v2;
					v1 = stack[st-2*instances];
					v2 = stack[st-1*instances];
					stack[st-2*instances] = v1>v2?0.0:1.0;
				}
				sp-=1;
				break;
			case Bytecode::SMOOTHSTEP:
				//cout << "SMOOTHSTEP" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float v1, v2, vf;
					v1 = stack[st-3*instances];
					v2 = stack[st-2*instances];
					vf = stack[st-1*instances];
					stack[st-3*instances] = clamp((vf-v1)/(v2-v1), 0.0f, 1.0f);
				}
				sp-=2;
				break;
			case Bytecode::SMOOTHSTEPR:
				//cout << "SMOOTHSTEP" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float v1, v2, vf;
					v1 = stack[st-3*instances]; // Orig: -v1 / (v2 - v1)
					v2 = stack[st-2*instances]; // Orig: 1 / (v2 - v1)
					vf = stack[st-1*instances];
					stack[st-3*instances] = clamp(vf*v2+v1, 0.0f, 1.0f);
				}
				sp-=2;
				break;
			case Bytecode::DP2:
				//cout << "DP3" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-4*instances]*stack[st-3*instances];
					float b = stack[st-2*instances]*stack[st-1*instances];
					stack[st-4*instances] = a+b;
				}
				sp -= 3;
				break;
			case Bytecode::DP3:
				//cout << "DP3" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-6*instances]*stack[st-5*instances];
					float b = stack[st-4*instances]*stack[st-3*instances];
					float c = stack[st-2*instances]*stack[st-1*instances];
					stack[st-6*instances] = a+b+c;
				}
				sp -= 5;
				break;
			case Bytecode::NORM3:
				//cout << "NORM3" << endl;
				for (int i = 0; i < instances; i++)
				{
					int st = i+sp*instances;
					float a = stack[st-1*instances];
					float b = stack[st-2*instances];
					float c = stack[st-3*instances];
					float invlen = 1.0f / sqrtf(a*a+b*b+c*c);
					stack[st-1*instances] *= invlen;
					stack[st-2*instances] *= invlen;
					stack[st-3*instances] *= invlen;
				}
				break;
			case Bytecode::LOAD:
				//cout << "LOAD " << instr.ivalue << endl;
				memcpy(&stack[sp*instances], &slots[instr.ivalue*instances], sizeof(float)*instances);
				sp++;
				break;
			case Bytecode::LOAD2:
				//cout << "LOAD2 " << instr.ivalue << endl;
				memcpy(&stack[sp*instances], &slots[instr.ivalue*instances], sizeof(float)*instances*2);
				sp+=2;
				break;
			case Bytecode::LOAD3:
				//cout << "LOAD3 " << instr.ivalue << endl;
				memcpy(&stack[sp*instances], &slots[instr.ivalue*instances], sizeof(float)*instances*3);
				sp+=3;
				break;
			case Bytecode::LOAD4:
				//cout << "LOAD4 " << instr.ivalue << endl;
				memcpy(&stack[sp*instances], &slots[instr.ivalue*instances], sizeof(float)*instances*4);
				sp+=4;
				break;
			case Bytecode::STORE:
				//cout << "STORE " << instr.ivalue << endl;
				sp--;
				memcpy(&slots[instr.ivalue*instances], &stack[sp*instances], sizeof(float)*instances);
				break;
			case Bytecode::STORE2:
				//cout << "STORE2 " << instr.ivalue << endl;
				sp-=2;
				memcpy(&slots[instr.ivalue*instances], &stack[sp*instances], sizeof(float)*instances*2);
				break;
			case Bytecode::STORE3:
				//cout << "STORE3 " << instr.ivalue << endl;
				sp-=3;
				memcpy(&slots[instr.ivalue*instances], &stack[sp*instances], sizeof(float)*instances*3);
				break;
			case Bytecode::STORE4:
				//cout << "STORE4 " << instr.ivalue << endl;
				sp-=4;
				memcpy(&slots[instr.ivalue*instances], &stack[sp*instances], sizeof(float)*instances*4);
				break;
			case Bytecode::RETURN:
				//cout << "RETURN" << endl;
				if (callStack.empty()) return false;
				ip = callStack.top();
				callStack.pop();
				return true;
			case Bytecode::CALL:
				//cout << "CALL " << instr.ivalue << endl;
				callStack.push(ip+1);
				ip = instr.ivalue;
				return true;
			case Bytecode::REPEAT:
				//cout << "REPEAT " << instr.ivalue << endl;
				ip++;
				repeatStack.push({ip, instr.ivalue});
				return true;
			case Bytecode::ENDREPEAT: {
				//cout << "ENDREPEAT" << endl;
				auto& state = repeatStack.top();
				state.second--;
				if (state.second == 0) {
					repeatStack.pop();
					ip++;
					return true;
				}
				ip = state.first;
				return true;
			}
			default:
				cerr << "VM: Unhandled bytecode at IP " << ip << endl;
				return false;
		}

		ip++;
		return true;
	}

	void setValue(int slot, int instance, float value) {
		slots[instances*slot+instance] = value;
	}

	float& getValue(int slot, int instance) {
		return slots[instances*slot+instance];
	}

	Program& program;
	int instances = 0;
	int sp = 0;
	int ip = 0;
	bool done = false;

	std::stack<int>				callStack;
	std::stack<pair<int, int>>	repeatStack;

	float *stack;
	float *slots;

	// Stats
	int scount[Bytecode::MAX_BYTECODE];
	double tcount[Bytecode::MAX_BYTECODE];
};

#endif