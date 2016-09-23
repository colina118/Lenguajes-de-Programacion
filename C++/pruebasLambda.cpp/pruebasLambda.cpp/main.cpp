#include "Filter.h"

using namespace std;

int main()
{
	filter a;
	a.ex();
	a.printIf([](int a)
	{
		if (a > 5)
		cout << a << endl;
	});
	return 0;
}