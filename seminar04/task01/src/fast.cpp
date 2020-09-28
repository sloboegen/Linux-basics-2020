#include "fast.hpp"

using ll = long long;

long long fast_fib(size_t n) {
    if (n <= 1) {
        return n;
    }

    ll prev = 0, cur = 1;
    for (int i = 0; i < n - 1; i++) {
        ll tmp = prev;
        prev = cur;
        cur += tmp;
    }
    
    return cur;
}
