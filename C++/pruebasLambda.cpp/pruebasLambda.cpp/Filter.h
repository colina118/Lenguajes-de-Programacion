#include <vector>
#include <iostream>
#include <algorithm>
#include <functional>

using namespace std;

class filter
{
public:
	vector<int> vi {1, 2, 3, 4, 5, 6, 7};
	vector<function<void(int &)>> v;
	int valor = 3;
	void addFilter()
	{
		v.push_back([=](int &a)
		{	
			a += valor; 
			cout << valor; 
		});
	}

	void ex()
	{
		int a = 5;
		[&](int &)
		{
			a += valor;
			cout << valor << endl;
		}
		(a);
	}

	void PrintIfPair()
	{
		for_each(vi.begin(), vi.end(), [=](int a) {if (a % 2 == 0) cout << a << endl;});
	}

	template <class function>
	void printIf(function f)
	{
		for_each(vi.begin(), vi.end(), f);
	}
};