#ifndef Util_h
#define Util_h

#include <sstream>
#include <string>
#include <cmath>

using namespace std;

template <typename T>
T to(string in) {
	istringstream ss(in);
	T value;
	ss >> value;
	return value;
}

float mod(float a, float b) {
	return a - b * floor(a/b);
}

float modStore(float& a, float b) {
	a = a - b * floor(a/b);
	return a;
}

float clamp(float a, float b, float c) {
	return (a < b ? b : (a > c ? c : a));
}

#endif