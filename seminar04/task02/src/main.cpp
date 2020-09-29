#include <iostream>

#include "fast.hpp"

int main(int argc, char** argv) {
    size_t n = atoi(argv[1]);

    std::cout << fast_fib(n) << std::endl;

    return 0;
}