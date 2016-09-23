#include <stdlib.h>
#include <iostream>
#include <functional>

using namespace std;

void ejecutaFuncion(function<void(int &)> f)
{
  int a = 5;
  f(a);
}

int main()
{
  int z = 2;
  int a = 1;

  function<void(int &) f = [&](int &b) mutable
  {
    cout << b;
    cout << z;
    cout << a;
  };
  ejecutaFuncion(f);
}
