SHELL := /bin/bash

all: build_fast build_slow clean

build_fast: src/main_fast.cpp src/fast.cpp src/fast.hpp
	g++ src/main_fast.cpp src/fast.cpp -o fast	
build_slow: src/main_slow.cpp src/slow.cpp src/slow.hpp
	g++ src/main_slow.cpp src/slow.cpp -o slow	
run_fast: build_fast 
	./fast `bash ./src/generator.sh`	
run_slow: build_slow 
	./slow `bash ./src/generator.sh`	
time: 
	time $(ARGS)
clean:
	rm fast slow
.PHONY: clean

