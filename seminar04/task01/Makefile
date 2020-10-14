# print your code here
SHELL := /bin/bash
all: run_fast run_slow
build_fast: src/main_fast.cpp src/fast.hpp src/fast.cpp
        g++ src/main_fast.cpp src/fast.cpp -o fast
build_slow: src/main_slow.cpp src/slow.hpp src/slow.cpp
        g++ src/main_slow.cpp src/slow.cpp -o slow
run_fast: build_fast src/generator.sh
        ./fast `./src/generator.sh`
run_slow: build_slow src/generator.sh
        ./slow `./src/generator.sh`
time: build_fast build_slow
        time ./$(ARGS)
clean:
        rm -f fast slow
