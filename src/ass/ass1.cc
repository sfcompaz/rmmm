#include "ass.ih"

Ass::Ass()
:
    d_capacity(1),
    d_size(0),
    d_hashes(expand())
{}
