// 1180300105 吴雨伦
// 作业题：
// 第四章：4.45、4.46、4.47、4.48、4.49、4.50、4.51
// 第五章：5.14、5.16、5.18

// --------------------- 第四章 ---------------------

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
    irmovq  $8, %r10
	addq	%r10, %rax
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
    addq    %rcx, %rdx          ; 获取*i + *(i+1)
    subq    %r10, %rdx          ; 两数之和减去最小值，得到最大值
	rmmovq	%rdx, 8(%rax)       ; *(i+1)赋值为最大值  
	jmp	.L3
*/

// 4.50 
/*

    .align  8           ; 跳转表
.table:
    .quad   .L0         ; 0 -> L0
    .quad   .LDF        ; 1 -> default
    .quad   .L2         ; 2 -> L2
    .quad   .L3         ; 3 -> L3
    .quad   .LDF        ; 4 -> default
    .quad   .L5         ; 5 -> L5


switchv:                ; v in %rdi
    rrmovq  %rdi, %r8
    irmovq  $5, %r10
    subq    %r10, %r8
    jg      .LDF        ; v>5则跳入.LDF
    pushq   *.table(,%rdi,8)
    ret
.L0:
    irmovq  $0xaaa, %rax
    jmp     .done
.L2:
.L5:
    irmovq  $0xbbb, %rax
    jmp     .done  
.L3:
    irmovq  $0xccc, %rax
    jmp     .done
.LDF:
    irmovq  $0xddd, %rax
.done:
    ret
*/

// 4.51
/*
取指    icode:ifun <- M1[PC]
        rA:rB <- M1[PC+1]
        valC <- M8[PC+2]
        valP <- PC+10
译码    valB <- R[rB]
执行    valE <- valC + valB
        Set CC
访存    /
写回    R[rB] <- valE
更新PC  PC <- valP
*/

// --------------------- 第五章 ---------------------


