// 1180300105 吴雨伦
// 作业题：2.58, 2.62, 2.66, 2.70, 2.74, 2.78, 2.82, 2.86 , 2.90, 2.94
// 选做四星题：2.65

#include <stdio.h>
#include <limits.h>
#include <math.h>

// 2.58
int is_little_endian()
{
    union {int w;char c;}test={1};
    return test.c;
}

// 2.62
int int_shifts_are_arithmetic()
{
    int i=-1;
    unsigned int u=-1;

    return (u>>1) != (i>>1);
}

// 2.65 [选做四星题]
int odd_ones(unsigned x)
{
    x = (x>>16) ^ x;
    x = (x>>8) ^ x;
    x = (x>>4) ^ x;
    x = (x>>2) ^ x;
    x = (x>>1) ^ x;
    return x&1;
}

// 2.66
int leftmost_one(unsigned x)
{
    x |= (x>>1);
    x |= (x>>2);
    x |= (x>>4);
    x |= (x>>8);
    x |= (x>>16);
    return x^(x>>1);
}

// 2.70
int fits_bits(int x,int n)
{
    // 题目已经约定，signed型变量的右移为算术右移。
    int w = sizeof(int)<<3;
    return x == ((x<<(w-n))>>(w-n));
}

// 2.74
int tsub_ok(int x,int y)
{
    if(y == INT_MIN) return x<0;

    int sum = x-y;
    int neg_over = x<0 && y>0 && sum >=0;
    int pos_over = x>= 0 && y<=0 && sum < 0;
    return !neg_over && !pos_over;
}

// 2.78
int divide_power2(int x,int k)
{
    int w = sizeof(int) << 3;
    int bias = (x>>(w-1)) & ((1<<k)-1);
    return (x+bias)>>k;
}

/*
    2.82

    A.  false
        反例：x=INT_MIN,y=1
    B.  true
        注意到unsigned int值与模2**32意义下的加法、乘法运算构成环。
        由数学知识，不难推断两边恒等。
    C.  true
        左边 ≡ -x-1-y-1+1 ≡ -x-y-1      (mod 2**32)
        右边 ≡ -(x+y)-1 ≡ -x-y-1        (mod 2**32)
        故恒等。
    D.  true
        记inv(x)为x的模2**32意义下加法逆元。则
        左边 ≡ x + inv(y)               (mod 2**32)             
        右边 ≡ inv(y + inv(x)) ≡ inv(y) + inv(inv(x)) 
            ≡ inv(y) + x               (mod 2**32)    
        故恒等。
    E.  true
        最右边两位可能从1变成0. 这两位的权重是正值，故不会使x变得更大。
*/

/*
    2.86

    最小的正非规格化数：    $ 2^{-63}*2^{-16382} = 2^{-16445} $      十进制下 3.6E-4951
    最小的正规格化数：      $ 2^{-16382} $                          十进制下 3.4E-4932
    最大的规格化数：       $2^{16383} * (2-eps) \approx 2^{16384}$  十进制下 1.2E4932    
*/

/*
    2.90

    -149
    0
    0

    -126
    0
    1 << (149 + x)
    
    128
    x + 127
    0
    
    255
    0
*/

typedef unsigned float_bits;

// 2.94
float_bits float_twice(float_bits f)
{
    unsigned sign = f>>31;              // f[31]
    unsigned exp  = f>>23 & 0xFF;       // f[30:23]
    unsigned frac = f     & 0x7FFFFF;   // f[22:0]

    if(exp == 0)                        // 非规格化
    {
        // 稍加推导可以发现，即使f[22]==1，这份代码依然正常工作。
        // 因为frac左移一位之后，f[23]恰好变为1；f[22:0]恰好省略掉了整数位.
        frac = frac << 1;
    }
    else if(exp == 0xFF)                // NaN和无穷大判断
        return f;
    else if(exp == 0xFF-1)              // 极大值乘以2后变成无穷大
    {
        exp = 0xFF;
        frac = 0;
    }
    else
        exp += 1;
    
    return (sign<<31) | (exp << 23) | frac;
}

// just for test.
int main(void)
{
    printf("%d\n",is_little_endian());
    printf("%d\n",int_shifts_are_arithmetic());
    printf("%d %d %d\n",odd_ones(123456),odd_ones(234567),odd_ones(345678));
    printf("%#x\n",leftmost_one(0x6600));
    printf("%d %d %d\n",fits_bits(-1000000,19),fits_bits(-1000000,20),fits_bits(-1000000,21));
    printf("%d %d %d\n",fits_bits(0xAA,7),fits_bits(0xAA,8),fits_bits(0xAA,9));
    printf("%d %d %d\n",tsub_ok(1,2),tsub_ok(1,INT_MIN),tsub_ok(2000000000,-1000000000));

    printf("%d %d\n",divide_power2(35,3),divide_power2(-35,3));

    union{unsigned u;float f;}e,s;

    // 平凡情况
    e.f = 233.666;
    s.u = float_twice(e.u);
    e.f = e.f*2.0;
    printf("native      : %f [%08x]\n",e.f,e.u);
    printf("float_twice : %f [%08x]\n",s.f,s.u);

    // 极小值测验
    e.f = 1.1e-38;
    s.u = float_twice(e.u);
    e.f = e.f*2.0;
    printf("native      : %f [%08x]\n",e.f,e.u);
    printf("float_twice : %f [%08x]\n",s.f,s.u);

    // 极大值测验
    e.f = 3.3e+38;
    s.u = float_twice(e.u);
    e.f = e.f*2.0;
    printf("native      : %f [%08x]\n",e.f,e.u);
    printf("float_twice : %f [%08x]\n",s.f,s.u);

    // 无穷大测验
    e.f = 1.0/0.0;
    s.u = float_twice(e.u);
    e.f = e.f*2.0;
    printf("native      : %f [%08x]\n",e.f,e.u);
    printf("float_twice : %f [%08x]\n",s.f,s.u);

    // NaN测验
    e.f = sqrt(-1);
    s.u = float_twice(e.u);
    e.f = e.f*2.0;
    printf("native      : %f [%08x]\n",e.f,e.u);
    printf("float_twice : %f [%08x]\n",s.f,s.u);

    return 0;
}
