#pragma GCC diagnostic ignored "-Wformat="
#include <stdio.h>

#define getHex(x,size) {printf("Hex: ");                            \
                        for(char i=0,*p=(char *)x;i<size;i++,p++)   \
                            printf("%02X ",(unsigned char)(*p));    \
                        puts("");}
#define outputInfo(x,format)                                        \
        printf("name: "#x"\tvalue: %-14"format"adr: %p\t"          \
               ,x,(&x));                        \
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

struct str      {int a,b;};
union uni       {int x;char c;};
enum enu        {X=1,Y};

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

    int *my_ptr=&my_int;
    outputInfo(my_ptr,"d");

    int my_arr[3]={1,2,3};
    outputInfo(my_arr,"d");

    struct str my_stru;
    my_stru.a=4,my_stru.b=5;
    outputInfo(my_stru,"d");

    union uni my_uni;
    my_uni.x=65;
    outputInfo(my_uni,"c");

    enum enu my_enu;
    my_enu=Y;
    outputInfo(my_enu,"d");

    printf("Adress of [main] : %p\n",main);
    printf("Adress of [main] : %p\n",printf);
    
    
    return 0;
}