#include <iostream>
using namespace std;

int main()
{
  long int n = 600851475143;
  long int b = 27;
  int answer;
  while (b < 100000) {
    if (n % b == 0) { // if it is a factor
      for (int i = 1; i < b/2; i++) {
        if (i == (b/2 - 1)) {
          answer = b;
          cout << b << " is prime" << endl;
        }
        else if (b % i == 0) {
          cout << b << " is not prime" << endl;
        }
      }
    }
    b += 2;
  }
  cout << answer << endl;
  return 0;
}
