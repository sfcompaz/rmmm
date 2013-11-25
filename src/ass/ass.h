#ifndef INCLUDED_ASS_
#define INCLUDED_ASS_

// Associative Array

#include "../hash/hash.h"

class Ass
{
    size_t d_capacity;
    size_t d_size;
    Hash **d_hashes;

    public:
        friend std::ostream &operator<<(std::ostream &out, Ass const &ass);
        Ass();
        Ass(Ass const &other);
        Ass(Ass &&tmp);
        ~Ass();
        Ass &operator=(Ass const &other);
        Ass &operator=(Ass &&tmp);
        void swap(Ass &other);
        void AddName(std::string const &name);

    private:
        void reallocHashes();
        Hash **expand() const;
        
};
        
#endif

