#include <iostream>
using namespace std;

int main()
{
  int prospect = 2520;
  while (true) {
    if (prospect % 11 == 0 && prospect % 12 == 0 && prospect % 13 == 0 && prospect % 14 == 0 && prospect % 15 == 0 && prospect % 16 == 0 && prospect % 17 == 0 && prospect % 18 == 0 && prospect % 19 == 0 && prospect % 20 == 0) {
      break;
    }
    else {
      prospect += 10;
    }
  }
  cout << prospect << endl;
  return 0;
}
