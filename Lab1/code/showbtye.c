#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char myCode[10005];
int fileSize;

int die(char *s)
{
    puts(s);
    exit(1);
}

void openFile(char *fileName) // open the file and copy the code into myCode[].
{
    FILE *fp;

    fp = fopen(fileName,"r");

    if(fp == NULL) die("[Fatal] cannot open file.\n"
                       "Maybe the file doesn't exist; or permission denied.");

    fseek(fp,0,SEEK_END);   // set offset to the END of the file.
    fileSize = ftell(fp);   // get the size of our code.

    if(fileSize > 10000) die("[Fatal] too large file!\n");

    rewind(fp);             // set offset to BEGIN.

    fread(myCode,1,fileSize,fp);    // read our code
}

void showByte(char *s)      // show our code in CHAR mode
{
    for(char *p=s;*p;p++)
    {
        if(*p >=32) printf("%5c",*p);
        else if(*p == '\n') printf("   \\n");    // to avoid print a real enter
        else printf(" \\x%02X",(unsigned char)(*p));
    }
    puts("");
}

void showHex(char *s)       // show our code in HEX mode
{
    for(char *p=s;*p;p++)
        printf("   %02X",(unsigned char)(*p));
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

int main(int argc,char** argv)
{
    if(argc < 2)
        die("[Fatal] no input file assigned.\n"
             "usage: showbyte <filename>");
    openFile(argv[1]);
    work();

    return 0;
}