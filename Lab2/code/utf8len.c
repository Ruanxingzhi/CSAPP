#include <stdio.h>

int utf8len(char *s)
{
    char p;
    int cnt,i,len=0;
    while(*s)
    {
        p = *s;               // get the first byte
        cnt = 1;

        if(p&(1<<7))          // to check whether p is in ASCII
            for(cnt=0,i=7;p&(1<<i);i--)
                cnt++;        // get this word's size

        s+=cnt;               // skip this word
        len++;
    }
    
    return len;
}

void showBin(char *s)       // show the bin data of a string, just for test
{
    for(;*s;s++,printf(" "))
        for(int p=7;p>=0;p--) printf("%d",(*s>>p)&1);
    puts("");
}

int main(void)
{
    char *s="无A边B落C木D萧E萧F下G，不H尽I长J江K滚L滚M来N□";
    showBin(s);
    printf("len = %d\n",utf8len(s));

    puts(utf8len(s) == 30?"Check OK":"ERROR!!!!");

    return 0;
}