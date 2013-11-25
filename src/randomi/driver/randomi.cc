#include <iostream>
#include <random>
#include <chrono>

using namespace std;
using namespace std::chrono;

int main()
{
    unsigned seed = system_clock::now().time_since_epoch().count();
    default_random_engine generator(seed);
    
    uniform_int_distribution<int> distribution(0,100);
    
    cout << "random numbers between 0 and 100: \n";
    for (int i = 0; i < 10; ++i)
        cout << distribution(generator) << '\n';
}
