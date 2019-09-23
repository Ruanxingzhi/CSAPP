#include <stdio.h>

union judger
{
    int  num;
    char w;
};

int isLittleEndian()
{
    union judger test;
    test.num = 1;
    return test.w;
}

int main(void)
{
    puts(isLittleEndian()?"Little Endian":"Big Endian");
    return 0;
}