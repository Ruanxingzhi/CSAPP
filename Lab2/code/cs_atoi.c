#include <stdio.h>

int cs_atoi(char *s)
{
    int res=0;
    for(;*s;s++)
        res = res*10 + *s - '0';
    return res;
}

int main(void)
{
    puts(cs_atoi("1180300105") == 1180300105 ? "Check OK":"ERROR!!!!");
    puts(cs_atoi("123456789") == 123456789 ? "Check OK":"ERROR!!!!");
    puts(cs_atoi("123") == 123 ? "Check OK":"ERROR!!!!");

    return 0;
}