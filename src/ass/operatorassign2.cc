#include "ass.ih"

Ass &Ass::operator=(Ass &&tmp)
{
    swap(tmp);
    return *this;
}
