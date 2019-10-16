#include <stdio.h>
#include <string.h>

char* cs_itoa(int x)
{
    static char res[25];
    memset(res,0,sizeof(res));

    int st[25],tot=0,i;         // a stack to store digits

    while(x)
    {
        st[tot++]=x%10;
        x/=10;
    }

    for(i=0;tot--;i++)
        res[i]=st[tot]+'0';

    return res;
}

int main(void)
{
    puts(strcmp(cs_itoa(1180300105),"1180300105") ? "ERROR!!!!" : "Check OK");
    puts(strcmp(cs_itoa(123456789),"123456789") ? "ERROR!!!!" : "Check OK");
    puts(strcmp(cs_itoa(111),"111") ? "ERROR!!!!" : "Check OK");
    

    return 0;
}