// 1180300105 吴雨伦
// 作业题：5.14、5.16、5.18

// 5.14
void inner14(vec_ptr u, vec_ptr v,data_t *dest)
{
    long i,length = vec_length(u);
    data_t *udata = get_vec_start(u);
    data_t *vdata = get_vec_start(v);
    data_t sum = (data_t) 0;

    for(i = 0; i < length; i+=5)
    {
        sum = sum + udata[i] * vdata[i]   
               + udata[i+1] * vdata[i+1]    
               + udata[i+2] * vdata[i+2]    
               + udata[i+3] * vdata[i+3]    
               + udata[i+4] * vdata[i+4]    
               + udata[i+5] * vdata[i+5];
    }
    for(; i<length; i++)
        sum += udata[i] * vdata[i];

    *dest = sum;
}
// A. 关键路径仍为n个加法，加法的延迟为1周期，无法进一步优化。
// B. 浮点数延迟为3个周期，不展开时已经达到最低CPE。

// 5.16
void inner14(vec_ptr u, vec_ptr v,data_t *dest)
{
    long i,length = vec_length(u);
    data_t *udata = get_vec_start(u);
    data_t *vdata = get_vec_start(v);
    data_t sum = (data_t) 0;

    for(i = 0; i < length; i+=5)
    {
        sum = sum +
               ( udata[i] * vdata[i]   
               + udata[i+1] * vdata[i+1]    
               + udata[i+2] * vdata[i+2]    
               + udata[i+3] * vdata[i+3]    
               + udata[i+4] * vdata[i+4]    
               + udata[i+5] * vdata[i+5]);
    }
    for(; i<length; i++)
        sum += udata[i] * vdata[i];

    *dest = sum;
}

// 5.18
double poly(double a[], double x, long degree)
{
    long i = 1;
    double r0 = a[0], r1 = 0, r2 = 0;

    double P1 = x;
    double P3 = x * x * x;
    double P5 = x * x * x * x * x;
    double P6 = x * x * x * x * x * x;

    for (; i <= degree - 6; i+=6)       // 6x3a展开
    {
        r0 += a[i]*P1 + a[i+1]*P1*x;
        r1 += a[i+2]*P3 + a[i+3]*P3*x;
        r2 += a[i+4]*P5 + a[i+5]*P5*x;

        P1 *= P6;
        P3 *= P6;
        P5 *= P6;
    }

    for (; i <= degree; i++)            // 直接求值
    {
        r0 += a[i]*P1;
        P1 *= x;
    }

    return r0 + r1 + r2;
}
