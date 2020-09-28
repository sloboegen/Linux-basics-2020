#include "slow.hpp"

long long slow_fib(size_t n) {
    return (n <= 1) ? n : (slow_fib(n - 1) + slow_fib(n - 2));
}