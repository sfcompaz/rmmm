#include "ass.ih"

std::ostream &operator<<(std::ostream &out, Ass const &ass)
{
    out << "{ \"d_size\": " << ass.d_size << ", \"d_capacity\": " << ass.d_capacity << ", \"d_hashes\": [ ";
    for (size_t size = 0; size < ass.d_size; ++size)
//        out << "{ \"name\": \"" << ass.d_hashes[size]->name() << "\", \"value\": " << ass.d_hashes[size]->value() << " }";
        out << *(ass.d_hashes[size]) << ((size + 1 < ass.d_size) ? ", " : " ");
    return out << "] }";
}

