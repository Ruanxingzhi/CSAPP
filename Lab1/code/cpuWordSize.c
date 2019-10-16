#include <stdio.h>

int cpuWordSize()
{
    return sizeof(int*) * 8;
}

int main(void)
{
    printf("%d bit\n",cpuWordSize());
    
    // Unfortunately, this function may cannot work well, because 
    // this function checks the size of a pointer, which relies
    // on compile conditions. Compiling this code in 64-bit mode 
    // will give a 64-bit result; and gives 32-bit result in 32-bit 
    // mode. This situation may lead to error, for which we don't 
    // always compile in 64-bit mode when we use a 64-bit computer.

    return 0;
}