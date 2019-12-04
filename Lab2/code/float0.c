#include <stdio.h>

int main(void)
{
    float f=1.0;
    printf("%f\n",f/0.0);
    printf("%f\n",f/1e-50);
    
    return 0;
}