#include <stdio.h>


// while "f[i-1]<f[i]" is not a good method to check exp,
// I have validated these results by comparing with the
// result given by validate.py, and they are all correct.
#define loopGen(type)   void loop_##type()                      \
                        {                                       \
                            type f[105]={0,1,1,2};              \
                            int i;                              \
                            for(i=3;f[i-1]<f[i];i++)            \
                                f[i+1]=f[i-1]+f[i];             \
                            printf(#type" exp in F[%d]\n",i);   \
                        }

typedef unsigned int uint;
typedef unsigned long ulong;

loopGen(int);
loopGen(long);
loopGen(uint);
loopGen(ulong);

int main(void)
{
    loop_int();
    loop_long();
    loop_uint();
    loop_ulong();
    return 0;
}