SHELL := /bin/bash 

all: build run clean

build: main.cpp
	g++ -std=c++17 main.cpp -o run_main

run: build
	./run_main

clean:
	rm run_main

.PHONY: clean