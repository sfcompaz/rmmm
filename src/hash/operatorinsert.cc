#include "hash.ih"

std::ostream &operator<<(std::ostream &out, Hash const &hash)
{
    return out << "{ \"name\": \"" << hash.d_name << "\", \"value\": " << hash.d_value << " }";
}

