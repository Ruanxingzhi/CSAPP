// 1180300105 吴雨伦
// 作业题：
// 第四章：4.45、4.46、4.47、4.48、4.49、4.50、4.51
// 第五章：5.14、5.16、5.18

// 4.45
/*
A. 没有。pushq %rsp会将原先的rsp值压入栈顶。
B. 如下：
movq REG -8(%rsp)
subq $8, %rsp
*/

// 4.46
/*
A. 没有。popq %rsp会把原先的%rsp交给%rsp.
B. 如下：
addq $8, %rsp
movq -8(%rsp), REG
*/

// 4.47
void bubble(long *data, long count)
{
    long *last,*i;
    for(last = data+count-1; last > data; last--)
        for(i=data; i < last; i++)
            if(*(i+1) < *i)
            {
                long t = *(i+1);
                *(i+1) = *i;
                *i = t;
            }
}
/*
bubble:
.LFB23:
    addq    %rsi, %rsi
    addq    %rsi, %rsi
    addq    %rsi, %rsi
    addq    %rsi, %rdi
    addq    $-8, %rdi
	jmp	.L2
.L3:
	addq	$8, %rax
.L5:
	rrmovq  %rsi, %r8
    subq    %rax, %r8
	jle	.L7                             
	mrmovq	8(%rax), %rdx
	mrmovq	(%rax), %rcx
    rrmovq  %rdx, %r8
    subq    %rcx, %r8
	jge	.L3
	rmmovq	%rcx, 8(%rax)
	rmmovq	%rdx, (%rax)  
	jmp	.L3
.L7:
	subq	$8, %rsi
.L2:                                    
    rrmovq  %rsi, %r8
    subq    %rdi, %r8
	jle	.L8
	rrmovq	%rdi, %rax
	jmp	.L5
.L8:
	ret
*/

// 4.48、4.49：一次条件传送
/*
改为
    mrmovq	8(%rax), %rdx
	mrmovq	(%rax), %rcx
    rrmovq  %rcx, %r10
    rrmovq  %rdx, %r8
    subq    %rcx, %r8
    cmovl   %rdx, %r10          ; 若%rdx < %rcx, 则%r10 <- %rdx. 此时%r10为最小值
	rmmovq	%r10, (%rax)        ; *i赋值为最小值
    addq    %rcx, %rdx          ; 获取*i+*(i+1)
    subq    %r10, %rdx          ; 两数之和减去最小值，得到最大值
	rmmovq	%rdx, 8(%rax)       ; *(i+1)赋值为最大值  
	jmp	.L3
*/

