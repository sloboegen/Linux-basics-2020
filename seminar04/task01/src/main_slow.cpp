#include <iostream>

#include "slow.hpp"

int main(int argc, char** argv) {
    size_t n = atoi(argv[1]);

    std::cout << slow_fib(n) << std::endl;

    return 0;
}