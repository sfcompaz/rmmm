#include "ass.ih"

Ass &Ass::operator=(Ass const &other)
{
    Ass tmp(other);
    swap(tmp);
    return *this;
}
