#include "ass.ih"

Ass::Ass(Ass &&tmp)
:
    d_capacity(tmp.d_capacity),
    d_size(tmp.d_size),
    d_hashes(tmp.d_hashes)
{
    tmp.d_size = 0;
    tmp.d_capacity = 0;
    tmp.d_hashes = 0;
}
