#include <stdio.h>
#include <math.h>
#include <string.h>

char* cs_ftoa(double x)
{
    static char res[25];
    int st[25],tot=0,i;         // a stack to store digits
    int dp=0,n;

    memset(res,0,sizeof(res));
    memset(st,0,sizeof(st));

    for(;fabs(x-(int)(x+.5)) > 1e-8;dp++)
        x*=10;

    n=(int)(x+.5);

    while(n)
    {
        st[tot++] = n%10 + '0';
        if(tot==dp) st[tot++]='.';
        n/=10;
    }
    if(st[tot-1] == '.') st[tot++]='0';

    for(i=0;tot--;i++)
        res[i]=st[tot];

    return res;
}

int main(void)
{
    puts(strcmp(cs_ftoa(3.14159),"3.14159") ? "ERROR!!!!" : "Check OK");
    puts(strcmp(cs_ftoa(0.123456),"0.123456") ? "ERROR!!!!" : "Check OK");
    puts(strcmp(cs_ftoa(123),"123") ? "ERROR!!!!" : "Check OK");
    

    return 0;
}