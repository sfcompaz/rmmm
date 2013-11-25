#include "ass.ih"

Hash **Ass::expand() const
{
    return static_cast<Hash **>(operator new(d_capacity * sizeof(Hash *)));
}
