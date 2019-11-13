// 1180300105 吴雨伦
// 作业题：3.58 3.60 3.62 3.64 3.66 3.68 3.70 3.72

// 3.58
long decode2(long x,long y,long z)
{
    y -= z;
    x *= y;
    return y<<63>>63^x;
}

// 3.60
// A. rdi保存x; esi保存n; rax保存result; rdx保存mask
// B. result = 0; mask = 1;
// C. mask != 0
// D. 每次逻辑左移n位
// E. result |= (x&mask)
long loop(long x,int n)
{
    long result = 0;
    long mask;
    for(mask=1; mask!=0; mask=mask<<n)
    {
        result |= (x&mask);
    }
    return result;
}

// 3.62
typedef enum {MODE_A, MODE_B, MODE_C, MODE_D, MODE_E} mode_t;

long switch3(long *p1, long *p2, mode_t action)
{
    long result = 0;
    switch(action)
    {
        case MODE_A:
            result = *p2;
            *p2 = *p1;
            break;
        case MODE_B:
            result = *p1 + *p2;
            *p1 = result;
            break;
        case MODE_C:
            *p1 = 59;
            result = *p2;
            break;
        case MODE_D:
            *p1 = *p2;
            result = 27;
            break;
        case MODE_E:
            result = 27;
            break;
        default:
            result = 12;
            break;
    }
    return result;
}

// 3.64
// &A[i][j][k] = A + S*T*i + T*j + k
// 易得 R=7, S=5, T=13.

// 3.66
// #define NR(n) 3*n
// #define NC(n) 4*n+1

// 3.68
// 由 &(p->y) = 184+&p 可知, A*B 要么取45，要么取46.
// 由 &(q->t) = 8+&q 可知，B在1,2...8范围内。
// 枚举B的取值，利用条件 &(q->u) = 32+&q 来验证答案。
// 容易验证：A=9, B=5.

// 3.70
// A. 0 8 0 8
// B. 16
// C. up->e2.x = *(up->e2.next->e1.p) - up->e2.next->e1.y;

// 3.72
// A. n为偶数时，s2 = s1-(8n+16)
//    n为奇数时，s2 = s1-(8n+24)
// B. p=s2+15，然后将二进制后四位置零
// C. min: s1满足s1%16 = 1
//    max: s1满足s1%16 = 0
// D. s1: 保证能容纳p
//    p: 保证自己16字节对齐