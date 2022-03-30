SDL_CFLAGS = `sdl2-config --cflags`
SDL_LDFLAGS = `sdl2-config --libs`

test: river_raid.sv 
	verilator -I../ -cc $< --exe river_raid.cpp -o $(basename $@) \
		-CFLAGS "${SDL_CFLAGS}" -LDFLAGS "${SDL_LDFLAGS}"
	make -C ./obj_dir -f Vriver_raid.mk


