#include "randomi.ih"

Randomi::Randomi(int low, int high)
:
    d_seed(std::chrono::system_clock::now().time_since_epoch().count()),
    d_generator(d_seed),
    d_distribution(low, high)
{
}
