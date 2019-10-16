#include <stdio.h>

// Let's generate these functions.
#define funcGen(type)   type fib_##type(type n)         \
                        {                               \
                            if(n==1 || n==2) return 1;  \
                            return fib_##type(n-2) +    \
                                   fib_##type(n-1);     \
                        }

typedef unsigned int uint;
typedef unsigned long ulong;

funcGen(int)
funcGen(long)
funcGen(uint)
funcGen(ulong)

int main(void)
{
    puts(fib_int(8)==21?"Check OK":"ERROR!!!!");
    puts(fib_long(8)==21?"Check OK":"ERROR!!!!");
    puts(fib_uint(8)==21?"Check OK":"ERROR!!!!");
    puts(fib_ulong(8)==21?"Check OK":"ERROR!!!!");
    
    return 0;
}