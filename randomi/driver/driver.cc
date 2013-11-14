
#include "randomi/randomi.h"
#include <iostream>

using namespace std;

int main()
{
    int low = 2;
    int high = 10;
    Randomi r(low, high);

    cout << "random numbers between " << low << " and " << high << ": \n";
    for (int i = 0; i < 10; ++i)
        cout << r.rnd() << '\n';
}
