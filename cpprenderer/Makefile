main: main.cpp Program.h VM.h Util.h Bytecode.h
	#g++ -O0 -g -std=c++11 -o main main.cpp -lSDL2
	g++ -O3 -march=native -ffast-math -ftree-vectorize -fgraphite -fgraphite-identity -floop-block -floop-flatten -floop-interchange -floop-strip-mine -floop-parallelize-all -ftree-loop-linear -msse2 -std=c++11 -o main main.cpp -lSDL2

clean:
	rm main