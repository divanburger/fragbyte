#ifndef Program_h
#define Program_h

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <iterator>
#include <vector>
#include <map>

#include "Util.h"
#include "Bytecode.h"

using namespace std;

struct Program {
	void parse(string filename) {
		ifstream input(filename);

		if (input.bad()) {
			cout << "Error opening: " << filename << endl;
			return;
		}

		int lineNum = 0;
		while (input.good() && !input.eof()) {
			string line;
			getline(input, line);
			lineNum++;

			if (line.empty() || line[0] == '#') continue;
			istringstream iss(line);

			vector<string> tokens;
			copy(istream_iterator<string>(iss),
				istream_iterator<string>(),
				back_inserter<vector<string> >(tokens));

			if (tokens.empty()) continue;

			if (tokens[0] == "FUNC")
				functions.insert({tokens[1], instructions.size()});
			else if (tokens[0] == "CALL" && tokens.size() == 2)
				instructions.push_back({Bytecode::CALL, functions.find(tokens[1])->second});
			else if (tokens[0] == "LDC" && tokens.size() == 2)
				instructions.push_back({Bytecode::LDC, to<float>(tokens[1])});
			else if (tokens[0] == "LDC2" && tokens.size() == 2)
				instructions.push_back({Bytecode::LDC2, to<float>(tokens[1])});
			else if (tokens[0] == "LDC3" && tokens.size() == 2)
				instructions.push_back({Bytecode::LDC3, to<float>(tokens[1])});
			else if (tokens[0] == "LDC4" && tokens.size() == 2)
				instructions.push_back({Bytecode::LDC4, to<float>(tokens[1])});
			else if (tokens[0] == "POP")
				instructions.push_back({Bytecode::POP});
			else if (tokens[0] == "POP2")
				instructions.push_back({Bytecode::POP2});
			else if (tokens[0] == "POP3")
				instructions.push_back({Bytecode::POP3});
			else if (tokens[0] == "POP4")
				instructions.push_back({Bytecode::POP4});
			else if (tokens[0] == "DUP")
				instructions.push_back({Bytecode::DUP});
			else if (tokens[0] == "DUP2")
				instructions.push_back({Bytecode::DUP2});
			else if (tokens[0] == "DUP3")
				instructions.push_back({Bytecode::DUP3});
			else if (tokens[0] == "DUPS")
				instructions.push_back({Bytecode::DUPS});
			else if (tokens[0] == "DUPS2")
				instructions.push_back({Bytecode::DUPS2});
			else if (tokens[0] == "DUPS3")
				instructions.push_back({Bytecode::DUPS3});
			else if (tokens[0] == "NEG")
				instructions.push_back({Bytecode::NEG});
			else if (tokens[0] == "NEG2")
				instructions.push_back({Bytecode::NEG2});
			else if (tokens[0] == "NEG3")
				instructions.push_back({Bytecode::NEG3});
			else if (tokens[0] == "NEG4")
				instructions.push_back({Bytecode::NEG4});
			else if (tokens[0] == "SQRT")
				instructions.push_back({Bytecode::SQRT});
			else if (tokens[0] == "RCP")
				instructions.push_back({Bytecode::RCP});
			else if (tokens[0] == "ADD")
				instructions.push_back({Bytecode::ADD});
			else if (tokens[0] == "ADD2")
				instructions.push_back({Bytecode::ADD2});
			else if (tokens[0] == "ADD3")
				instructions.push_back({Bytecode::ADD3});
			else if (tokens[0] == "ADD4")
				instructions.push_back({Bytecode::ADD4});
			else if (tokens[0] == "SUB")
				instructions.push_back({Bytecode::SUB});
			else if (tokens[0] == "SUB2")
				instructions.push_back({Bytecode::SUB2});
			else if (tokens[0] == "SUB3")
				instructions.push_back({Bytecode::SUB3});
			else if (tokens[0] == "SUB4")
				instructions.push_back({Bytecode::SUB4});
			else if (tokens[0] == "MUL")
				instructions.push_back({Bytecode::MUL});
			else if (tokens[0] == "MUL2")
				instructions.push_back({Bytecode::MUL2});
			else if (tokens[0] == "MUL3")
				instructions.push_back({Bytecode::MUL3});
			else if (tokens[0] == "MUL4")
				instructions.push_back({Bytecode::MUL4});
			else if (tokens[0] == "DIV")
				instructions.push_back({Bytecode::DIV});
			else if (tokens[0] == "DIV2")
				instructions.push_back({Bytecode::DIV2});
			else if (tokens[0] == "DIV3")
				instructions.push_back({Bytecode::DIV3});
			else if (tokens[0] == "DIV4")
				instructions.push_back({Bytecode::DIV4});
			else if (tokens[0] == "MOD")
				instructions.push_back({Bytecode::MOD});
			else if (tokens[0] == "MOD2")
				instructions.push_back({Bytecode::MOD2});
			else if (tokens[0] == "MOD3")
				instructions.push_back({Bytecode::MOD3});
			else if (tokens[0] == "MOD4")
				instructions.push_back({Bytecode::MOD4});
			else if (tokens[0] == "MAD")
				instructions.push_back({Bytecode::MAD});
			else if (tokens[0] == "MAD2")
				instructions.push_back({Bytecode::MAD2});
			else if (tokens[0] == "MAD3")
				instructions.push_back({Bytecode::MAD3});
			else if (tokens[0] == "MAD4")
				instructions.push_back({Bytecode::MAD4});
			else if (tokens[0] == "MIN")
				instructions.push_back({Bytecode::MIN});
			else if (tokens[0] == "MIN2")
				instructions.push_back({Bytecode::MIN2});
			else if (tokens[0] == "MIN3")
				instructions.push_back({Bytecode::MIN3});
			else if (tokens[0] == "MIN4")
				instructions.push_back({Bytecode::MIN4});
			else if (tokens[0] == "MAX")
				instructions.push_back({Bytecode::MAX});
			else if (tokens[0] == "MAX2")
				instructions.push_back({Bytecode::MAX2});
			else if (tokens[0] == "MAX3")
				instructions.push_back({Bytecode::MAX3});
			else if (tokens[0] == "MAX4")
				instructions.push_back({Bytecode::MAX4});
			else if (tokens[0] == "MIX")
				instructions.push_back({Bytecode::MIX});
			else if (tokens[0] == "MIX2")
				instructions.push_back({Bytecode::MIX2});
			else if (tokens[0] == "MIX3")
				instructions.push_back({Bytecode::MIX3});
			else if (tokens[0] == "MIX4")
				instructions.push_back({Bytecode::MIX4});
			else if (tokens[0] == "STEP")
				instructions.push_back({Bytecode::STEP});
			else if (tokens[0] == "SMOOTHSTEP")
				instructions.push_back({Bytecode::SMOOTHSTEP});
			else if (tokens[0] == "SMOOTHSTEPR")
				instructions.push_back({Bytecode::SMOOTHSTEPR});
			else if (tokens[0] == "SIN")
				instructions.push_back({Bytecode::SIN});
			else if (tokens[0] == "SIN2")
				instructions.push_back({Bytecode::SIN2});
			else if (tokens[0] == "SIN3")
				instructions.push_back({Bytecode::SIN3});
			else if (tokens[0] == "SIN4")
				instructions.push_back({Bytecode::SIN4});
			else if (tokens[0] == "COS")
				instructions.push_back({Bytecode::COS});
			else if (tokens[0] == "COS2")
				instructions.push_back({Bytecode::COS2});
			else if (tokens[0] == "COS3")
				instructions.push_back({Bytecode::COS3});
			else if (tokens[0] == "COS4")
				instructions.push_back({Bytecode::COS4});
			else if (tokens[0] == "ATAN")
				instructions.push_back({Bytecode::ATAN});
			else if (tokens[0] == "LEN")
			{} // Ignore
			else if (tokens[0] == "LEN2")
				instructions.push_back({Bytecode::LEN2});
			else if (tokens[0] == "LEN3")
				instructions.push_back({Bytecode::LEN3});
			else if (tokens[0] == "LEN4")
				instructions.push_back({Bytecode::LEN4});
			else if (tokens[0] == "ABS")
				instructions.push_back({Bytecode::ABS});
			else if (tokens[0] == "ABS2")
				instructions.push_back({Bytecode::ABS2});
			else if (tokens[0] == "ABS3")
				instructions.push_back({Bytecode::ABS3});
			else if (tokens[0] == "ABS4")
				instructions.push_back({Bytecode::ABS4});
			else if (tokens[0] == "DP2")
				instructions.push_back({Bytecode::DP2});
			else if (tokens[0] == "DP3")
				instructions.push_back({Bytecode::DP3});
			else if (tokens[0] == "NORM3")
				instructions.push_back({Bytecode::NORM3});
			else if (tokens[0] == "LOAD" && tokens.size() == 2)
				instructions.push_back({Bytecode::LOAD, to<int>(tokens[1])});
			else if (tokens[0] == "LOAD2" && tokens.size() == 2)
				instructions.push_back({Bytecode::LOAD2, to<int>(tokens[1])});
			else if (tokens[0] == "LOAD3" && tokens.size() == 2)
				instructions.push_back({Bytecode::LOAD3, to<int>(tokens[1])});
			else if (tokens[0] == "LOAD4" && tokens.size() == 2)
				instructions.push_back({Bytecode::LOAD4, to<int>(tokens[1])});
			else if (tokens[0] == "STORE" && tokens.size() == 2)
				instructions.push_back({Bytecode::STORE, to<int>(tokens[1])});
			else if (tokens[0] == "STORE2" && tokens.size() == 2)
				instructions.push_back({Bytecode::STORE2, to<int>(tokens[1])});
			else if (tokens[0] == "STORE3" && tokens.size() == 2)
				instructions.push_back({Bytecode::STORE3, to<int>(tokens[1])});
			else if (tokens[0] == "STORE4" && tokens.size() == 2)
				instructions.push_back({Bytecode::STORE4, to<int>(tokens[1])});
			else if (tokens[0] == "RETURN")
				instructions.push_back({Bytecode::RETURN});
			else if (tokens[0] == "REPEAT" && tokens.size() == 2)
				instructions.push_back({Bytecode::REPEAT, to<int>(tokens[1])});
			else if (tokens[0] == "ENDREPEAT")
				instructions.push_back({Bytecode::ENDREPEAT});
			else if (tokens[0] == "SLOTS")
				maxSlots = to<int>(tokens[1]);
			else if (tokens[0] == "STACK")
				maxStack = to<int>(tokens[1]);
			else
				cerr << "Line " << lineNum << ": Unhandled bytecode: " << tokens[0] << endl;
		}
	}

	int maxSlots;
	int maxStack;
	vector<Instruction>	instructions;
	map<string, int> functions;
};

#endif