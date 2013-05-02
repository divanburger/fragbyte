#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

#include <SDL2/SDL.h>

#include "VM.h"
#include "Program.h"
#include "Bytecode.h"

using namespace std;

int toInt(float in) {
	const int t = in * 255.0;
	return t < 0 ? 0 : (t > 255 ? 255 : t);
}

int main(int argc, char const *argv[]) {
	int width = 800;
	int height = 450;

	SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER);

	SDL_Window* window = SDL_CreateWindow("GLSL", 0, 0, width, height, SDL_WINDOW_SHOWN);
	SDL_Renderer* ren = SDL_CreateRenderer(window, -1, 0);
	SDL_Surface* surface = SDL_GetWindowSurface(window);

	Program program;
	program.parse(argc == 2 ? argv[1] : "../tests/test3.byte");

	VM vm(program, width*height);

	for (int y = 0; y < height; y++)
		for (int x = 0; x < width; x++)
		{
			int i = x+y*width;
			vm.setValue(4, i, x);
			vm.setValue(5, i, y);
			vm.setValue(6, i, width);
			vm.setValue(7, i, height);
		}
	
	float time = 0.0;
	bool running = true;
	long long start = SDL_GetTicks();
	long long last = start;
	while (running)
	{
		SDL_Event event;
		while (SDL_PollEvent(&event))
			if (event.type == SDL_QUIT)
				running = false;

		long long now = SDL_GetTicks();
		double delta = (now - last);
		last = now;

		cout << delta << " ms" << endl;

		for (int y = 0; y < height; y++)
			for (int x = 0; x < width; x++)
				vm.setValue(9, x+y*width, (now - start) * 0.001);

		while (vm.step());

		unsigned char pixels[width*height*3];

		for (int i = 0; i < width*height; i++) {
			pixels[i*3+0] = toInt(vm.getValue(0, i));
			pixels[i*3+1] = toInt(vm.getValue(1, i));
			pixels[i*3+2] = toInt(vm.getValue(2, i));
		}

		vm.reset();

		SDL_Surface* output = SDL_CreateRGBSurfaceFrom(pixels, width, height, 24, width*3, 0x0000FF, 0x00FF00, 0xFF0000, 0);
		SDL_Texture* tex = SDL_CreateTextureFromSurface(ren, output);

		SDL_RenderClear(ren);
		SDL_RenderCopy(ren, tex, NULL, NULL);
		SDL_RenderPresent(ren);

		SDL_FreeSurface(output);
		SDL_DestroyTexture(tex);

		time += 0.1;
	}

	SDL_DestroyRenderer(ren);
	SDL_DestroyWindow(window);
	SDL_Quit();

	return 0;
}