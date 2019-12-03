// 1180300105 吴雨伦
// 作业题：6.22 6.26 6.30 6.34 6.38 6.42 6.46

// 6.22
// maxarg(x){(r-xr)*x*r}
// 可知 x=0.5

// 6.26
// m	c	    B	E	S	t	s	b
// 32	2048	8	1	256	21	8	3
// 32	2048	4	4	128	23	7	2
// 32	1024	2	8	64	25	6	1
// 32	1024	32	2	16	23	4	5

// 6.30
// A. 128
// B. [12:5]CT [4:2]CI [1:0]CO

// 6.34
/*
dst:
m   m   m   m
m   m   m   m
m   m   m   m
m   m   m   m

src:
m   m   h   m
m   h   m   h
m   m   h   m
m   h   m   h
*/

// 6.38
// A. 1024
// B. 128
// C. 1/8

// 6.42
// 25%, 因为每连续四次访问中，第一次不命中。

// 6.46
// 控制i和j步长，尽量利用cache
// 考虑到无向图的性质，只需要计算上三角矩阵，然后对称地得到另一半矩阵。
void convert(int *src, int dim)
{
    int i, j, a, b, tmp;

    for (i = 0; i <= dim - 16; i += 16)
        for (j = i; j <= dim - 16; j += 16)
            for (a = i; a < i + 16; a++)
                for (b = j; b < j + 16; b++)
                {
                    tmp = src[b * dim + a] || src[a * dim + b];
                    src[b * dim + a] = tmp;
                    src[a * dim + b] = tmp;
                }

    int offset = i;

    for (i = offset; i <= dim - 1; i++)
        for (j = 0; j < offset; j += 16)
            for (b = j; b < j + 16; b++)
            {
                tmp = src[b * dim + i] || src[i * dim + b];
                src[b * dim + i] = tmp;
                src[i * dim + b] = tmp;
            }

    for (i = offset; i <= dim - 1; i++)
        for (j = i; j <= dim - 1; j++)
        {
            tmp = src[j * dim + i] || src[i * dim + j];
            src[j * dim + i] = tmp;
            src[i * dim + j] = tmp;
        }
}