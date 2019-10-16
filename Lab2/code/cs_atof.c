#include <stdio.h>

double cs_atof(char *s)
{
    double resA=0,resB=0,flag=.1;
    for(;*s && *s!='.';s++)
        resA = resA*10 + *s - '0';
    for(s++;*s;s++,flag*=.1)
        resB = resB + flag*(*s - '0');

    return resA+resB;
}

int is_equal(double a,double b)
{
    double r=a-b;
    r=r>0?r:-r;
    return r<1e-8;
}

int main(void)
{
    puts(is_equal(cs_atof("3.14159"), 3.14159) ? "Check OK":"ERROR!!!!");
    puts(is_equal(cs_atof(".123456"), .123456) ? "Check OK":"ERROR!!!!");
    puts(is_equal(cs_atof("123"), 123) ? "Check OK":"ERROR!!!!");
    
    
    return 0;
}