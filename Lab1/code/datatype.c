#pragma GCC diagnostic ignored "-Wformat="
#include <stdio.h>

#define getHex(x,size) {printf("Hex: ");                            \
                        for(char i=0,*p=(char *)x;i<size;i++,p++)   \
                            printf("%02X ",(unsigned char)(*p));    \
                        puts("");}
#define outputInfo(x,format)                                        \
        printf("name: "#x"\tvalue: %-14"format"adr: %#x\t"          \
               ,x,(unsigned int)(long)(&x));                        \
        getHex((&x),sizeof(x));
#define work(type,value,format)         \
        type my_##type = value;         \
        outputInfo(my_##type,format);

typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
typedef long long ll;
typedef unsigned long long ull;

int main(void)
{
    work(char,'A',"c");
    work(uchar,'B',"c");

    work(short,2333,"d");
    work(ushort,6666,"u");
    
    work(int,-1,"d");
    work(uint,-32,"u");

    work(long,123,"ld");
    work(ulong,456,"lu");
    
    work(ll,-1,"lld");
    work(ull,1180300105,"llu");

    work(float,233.233,"f");
    work(double,666.666,"lf");
    
    return 0;
}