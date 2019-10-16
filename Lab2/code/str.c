#include <stdio.h>
#include <string.h>

char cstr[100]="1180300105-WuYulun";
char *pstr="1180300105-WuYulun";

int main(void)
{
    puts(cstr);
    puts(pstr);

    strcpy(cstr,"430000123456780012");
    strcpy(pstr,"430000123456780012");
    
    puts(cstr);
    puts(pstr);

    return 0;
}