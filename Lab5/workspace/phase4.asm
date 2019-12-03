
phase4.o：     文件格式 elf64-x86-64
phase4.o
体系结构：i386:x86-64， 标志 0x00000011：
HAS_RELOC, HAS_SYMS
起始地址 0x0000000000000000

节：
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000015e  0000000000000000  0000000000000000  00000040  2**0
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000000  0000000000000000  0000000000000000  0000019e  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  0000019e  2**0
                  ALLOC
  3 .rodata       00000068  0000000000000000  0000000000000000  000001a0  2**2
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
  4 .data.rel.local 00000008  0000000000000000  0000000000000000  00000208  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, DATA
  5 .comment      00000025  0000000000000000  0000000000000000  00000210  2**0
                  CONTENTS, READONLY
  6 .note.GNU-stack 00000000  0000000000000000  0000000000000000  00000235  2**0
                  CONTENTS, READONLY
  7 .eh_frame     00000038  0000000000000000  0000000000000000  00000238  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 phase4.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .rodata	0000000000000000 .rodata
0000000000000000 l    d  .data.rel.local	0000000000000000 .data.rel.local
0000000000000000 l    d  .note.GNU-stack	0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 g     F .text	000000000000015e do_phase
0000000000000000         *UND*	0000000000000000 _GLOBAL_OFFSET_TABLE_
0000000000000000         *UND*	0000000000000000 putchar
0000000000000000         *UND*	0000000000000000 __stack_chk_fail
0000000000000000 g     O .data.rel.local	0000000000000008 phase



Disassembly of section .text:

0000000000000000 <do_phase>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
   f:	00 00 
  11:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  15:	31 c0                	xor    %eax,%eax
  17:	48 b8 53 59 45 4c 51 	movabs $0x435a49514c455953,%rax
  1e:	49 5a 43 
  21:	48 89 45 ed          	mov    %rax,-0x13(%rbp)
  25:	66 c7 45 f5 55 42    	movw   $0x4255,-0xb(%rbp)       # cookie = "SYELQIZCUB"
  2b:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
  2f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  36:	e9 f6 00 00 00       	jmpq   131 <do_phase+0x131>
  3b:	8b 45 e8             	mov    -0x18(%rbp),%eax         # loop begin
  3e:	48 98                	cltq   
  40:	0f b6 44 05 ed       	movzbl -0x13(%rbp,%rax,1),%eax  # eax = cookie[i]
  45:	88 45 e7             	mov    %al,-0x19(%rbp)          # c = cookie[i]
  48:	0f be 45 e7          	movsbl -0x19(%rbp),%eax
  4c:	83 e8 41             	sub    $0x41,%eax               # id = cookie[i] - 'A'
  4f:	83 f8 19             	cmp    $0x19,%eax
  52:	0f 87 ca 00 00 00    	ja     122 <do_phase+0x122>     # cookie[i] > 'Z' ? break
  58:	89 c0                	mov    %eax,%eax
  5a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx        
  61:	00 
  62:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax           # rax = &TABLE
			65: R_X86_64_PC32	.rodata-0x4
  69:	8b 04 02             	mov    (%rdx,%rax,1),%eax
  6c:	48 63 d0             	movslq %eax,%rdx                # rdx = TABLE[4*id]
  6f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax           # rax = &TABLE
			72: R_X86_64_PC32	.rodata-0x4
  76:	48 01 d0             	add    %rdx,%rax                # rax = &TABLE + TABLE[4*id]
  79:	ff e0                	jmpq   *%rax
  7b:	c6 45 e7 3c          	movb   $0x3c,-0x19(%rbp)
  7f:	e9 9e 00 00 00       	jmpq   122 <do_phase+0x122>
  84:	c6 45 e7 3b          	movb   $0x3b,-0x19(%rbp)
  88:	e9 95 00 00 00       	jmpq   122 <do_phase+0x122>
  8d:	c6 45 e7 37          	movb   $0x37,-0x19(%rbp)
  91:	e9 8c 00 00 00       	jmpq   122 <do_phase+0x122>
  96:	c6 45 e7 30          	movb   $0x30,-0x19(%rbp)      # '0'
  9a:	e9 83 00 00 00       	jmpq   122 <do_phase+0x122>
  9f:	c6 45 e7 7a          	movb   $0x7a,-0x19(%rbp)
  a3:	eb 7d                	jmp    122 <do_phase+0x122>
  a5:	c6 45 e7 7d          	movb   $0x7d,-0x19(%rbp)
  a9:	eb 77                	jmp    122 <do_phase+0x122>
  ab:	c6 45 e7 71          	movb   $0x71,-0x19(%rbp)
  af:	eb 71                	jmp    122 <do_phase+0x122>
  b1:	c6 45 e7 36          	movb   $0x36,-0x19(%rbp)
  b5:	eb 6b                	jmp    122 <do_phase+0x122>
  b7:	c6 45 e7 35          	movb   $0x35,-0x19(%rbp)      # '5'
  bb:	eb 65                	jmp    122 <do_phase+0x122>
  bd:	c6 45 e7 78          	movb   $0x78,-0x19(%rbp)
  c1:	eb 5f                	jmp    122 <do_phase+0x122>
  c3:	c6 45 e7 4f          	movb   $0x4f,-0x19(%rbp)
  c7:	eb 59                	jmp    122 <do_phase+0x122>
  c9:	c6 45 e7 56          	movb   $0x56,-0x19(%rbp)
  cd:	eb 53                	jmp    122 <do_phase+0x122>
  cf:	c6 45 e7 51          	movb   $0x51,-0x19(%rbp)
  d3:	eb 4d                	jmp    122 <do_phase+0x122>
  d5:	c6 45 e7 33          	movb   $0x33,-0x19(%rbp)      # '3'
  d9:	eb 47                	jmp    122 <do_phase+0x122>
  db:	c6 45 e7 6e          	movb   $0x6e,-0x19(%rbp)
  df:	eb 41                	jmp    122 <do_phase+0x122>
  e1:	c6 45 e7 31          	movb   $0x31,-0x19(%rbp)      # '1'
  e5:	eb 3b                	jmp    122 <do_phase+0x122>
  e7:	c6 45 e7 44          	movb   $0x44,-0x19(%rbp)
  eb:	eb 35                	jmp    122 <do_phase+0x122>
  ed:	c6 45 e7 46          	movb   $0x46,-0x19(%rbp)
  f1:	eb 2f                	jmp    122 <do_phase+0x122>
  f3:	c6 45 e7 6d          	movb   $0x6d,-0x19(%rbp)
  f7:	eb 29                	jmp    122 <do_phase+0x122>
  f9:	c6 45 e7 38          	movb   $0x38,-0x19(%rbp)      # '8'
  fd:	eb 23                	jmp    122 <do_phase+0x122>
  ff:	c6 45 e7 66          	movb   $0x66,-0x19(%rbp)
 103:	eb 1d                	jmp    122 <do_phase+0x122>
 105:	c6 45 e7 5b          	movb   $0x5b,-0x19(%rbp)
 109:	eb 17                	jmp    122 <do_phase+0x122>
 10b:	c6 45 e7 39          	movb   $0x39,-0x19(%rbp)
 10f:	eb 11                	jmp    122 <do_phase+0x122>
 111:	c6 45 e7 34          	movb   $0x34,-0x19(%rbp)
 115:	eb 0b                	jmp    122 <do_phase+0x122>
 117:	c6 45 e7 32          	movb   $0x32,-0x19(%rbp)
 11b:	eb 05                	jmp    122 <do_phase+0x122>
 11d:	c6 45 e7 3c          	movb   $0x3c,-0x19(%rbp)
 121:	90                   	nop
 122:	0f be 45 e7          	movsbl -0x19(%rbp),%eax       # [loop end]
 126:	89 c7                	mov    %eax,%edi
 128:	e8 00 00 00 00       	callq  12d <do_phase+0x12d>   
			129: R_X86_64_PLT32	putchar-0x4
 12d:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)       # i++
 131:	8b 45 e8             	mov    -0x18(%rbp),%eax       # [check]
 134:	83 f8 09             	cmp    $0x9,%eax
 137:	0f 86 fe fe ff ff    	jbe    3b <do_phase+0x3b>     # i<=9 ? goto loop
 13d:	bf 0a 00 00 00       	mov    $0xa,%edi
 142:	e8 00 00 00 00       	callq  147 <do_phase+0x147>
			143: R_X86_64_PLT32	putchar-0x4
 147:	90                   	nop
 148:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 14c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 153:	00 00 
 155:	74 05                	je     15c <do_phase+0x15c>
 157:	e8 00 00 00 00       	callq  15c <do_phase+0x15c>
			158: R_X86_64_PLT32	__stack_chk_fail-0x4
 15c:	c9                   	leaveq 
 15d:	c3                   	retq   
