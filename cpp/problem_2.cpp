#include <iostream>
using namespace std;

int fib (int n) {
    if (n == 0 || n == 1) {
        return n;
    } else {
        return fib(n-1) + fib(n-2);
    }
}
int main() {
    int sum = 0;
    int n = 1;
    while (true) {
        int val = fib(n);
        if (val > 4000000) {
            break;
        }
        if (val % 2 == 0) {
            sum += val;
        }
        n++;
    }
    cout << sum << endl;
    return 0;
}
