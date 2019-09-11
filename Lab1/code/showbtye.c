#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char myCode[1005];
int fileSize;

void openFile()             // open "hellolinux.c" and copy the code into myCode[].
{
    FILE *fp;

    fp = fopen("hellolinux.c","r");

    fseek(fp,0,SEEK_END);   // set offset to the END of the file.
    fileSize = ftell(fp);   // get the size of our code.
    rewind(fp);             // set offset to BEGIN.

    fread(myCode,1,fileSize,fp);    // read our code
}

void showByte(char *s)      // show our code in CHAR mode
{
    for(char *p=s;*p;p++)
    {
        if(*p != '\n') printf("%4c",*p);
        else printf("  \\n");               // judge '\n' to avoid print a newline
    }
    puts("");
}

void showHex(char *s)       // show our code in HEX mode
{
    for(char *p=s;*p;p++)
        printf("  %02X",*p);
    puts("\n");
}

void work()
{
    char buffer[20]={0};

    for(int i=0;i<fileSize;i+=16)
    {
        memcpy(buffer,myCode+i,16);     // get the 16-Bytes data to output
        showByte(buffer);               // CHAR mode
        showHex(buffer);                // HEX mode
    }
}

int main(void)
{
    openFile();
    work();

    return 0;
}