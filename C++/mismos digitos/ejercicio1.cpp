#include <iostream>
#include <string>

using namespace std;

bool igual(string, string);

int main()
{
  int a = 1;
  [&](int &)
  {
    bool encontrado = false;
    string temp, tempMult;
    int multiplo, cont;
    while(encontrado == false)
    {
      cont = 0;
      for(int i=2; i <= 5; i ++)
      {
        multiplo = a * i;
        temp = to_string(a);
        tempMult = to_string(multiplo);
        if(igual(temp, tempMult))
        {
          cont++;
        }
        else
        {
          break;
        }
      }
      if(cont == 4)
      {
        encontrado = true;
      }
      a++;
    }
    cout << "El numero es:" << a << endl;
  }(a);

}

bool igual(string original, string multiplo)
{
  if(original.length() != multiplo.length())
  {
    return false;
  }
  for (int i=0; i<original.length(); i++)
  {
    if(multiplo.find(original[i]) == string::npos)
    {
      return false;
    }
  }
  return true;
}
