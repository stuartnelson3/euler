#include <iostream>
using namespace std;

int main()
{
  int squared_total = 0;
  int squared_individual = 0;
  int sum = 0;
  for (int i = 1; i < 101; i++) {
    squared_individual += i*i;
    sum += i;
  }
  squared_total = sum*sum;
  cout << squared_total - squared_individual << endl;
  return 0;
}
