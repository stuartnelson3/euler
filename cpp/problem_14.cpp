#include <iostream>
using namespace std;

long int operate_on_number( long int n )
{
  if( n % 2 == 0 )
    return n / 2;
  else
    return ( 3 * n ) + 1;
}

int main()
{
  int saved_count = 0;
  long int answer;

  for( long int i = 2; i < 1000000; i++ ) {
    long int n = i;
    int count = 1;
    while( n > 1 ) {
      n = operate_on_number( n );
      count++;
    }
    if( count > saved_count ) {
      saved_count = count;
      answer = i;
    }
  }
  cout << answer << " caused " << saved_count << " iterations." << endl;
  return 0;
}
