#ifndef INCLUDED_HASH_
#define INCLUDED_HASH_

#include <iosfwd>
#include <string>

class Hash
{
    public:
        Hash(std::string const &name);
        unsigned long value() const;
        std::string const &name() const;
        friend std::ostream &operator<<(std::ostream &out, Hash const &hash);

    private:
        std::string d_name;
        unsigned long d_value;
        static unsigned long Hashvalue(char const *str, std::size_t len);
        static unsigned long Hashvalue(std::string const &str);
};

#endif
