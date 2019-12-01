
a.out：     文件格式 elf64-x86-64
a.out
体系结构：i386:x86-64， 标志 0x00000150：
HAS_SYMS, DYNAMIC, D_PAGED
起始地址 0x0000000000000600

程序头：
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r--
  INTERP off    0x0000000000000238 vaddr 0x0000000000000238 paddr 0x0000000000000238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x0000000000000a48 memsz 0x0000000000000a48 flags r-x
    LOAD off    0x0000000000000da8 vaddr 0x0000000000200da8 paddr 0x0000000000200da8 align 2**21
         filesz 0x0000000000000270 memsz 0x0000000000000398 flags rw-
 DYNAMIC off    0x0000000000000db8 vaddr 0x0000000000200db8 paddr 0x0000000000200db8 align 2**3
         filesz 0x00000000000001f0 memsz 0x00000000000001f0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000000254 paddr 0x0000000000000254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x00000000000008dc vaddr 0x00000000000008dc paddr 0x00000000000008dc align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000da8 vaddr 0x0000000000200da8 paddr 0x0000000000200da8 align 2**0
         filesz 0x0000000000000258 memsz 0x0000000000000258 flags r--

动态节：
  NEEDED               libc.so.6
  INIT                 0x0000000000000598
  FINI                 0x0000000000000854
  INIT_ARRAY           0x0000000000200da8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200db0
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000000298
  STRTAB               0x0000000000000390
  SYMTAB               0x00000000000002b8
  STRSZ                0x00000000000000a5
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000200fa8
  PLTRELSZ             0x0000000000000048
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000000550
  RELA                 0x0000000000000478
  RELASZ               0x00000000000000d8
  RELAENT              0x0000000000000018
  FLAGS                0x0000000000000008
  FLAGS_1              0x0000000008000001
  VERNEED              0x0000000000000448
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x0000000000000436
  RELACOUNT            0x0000000000000004

版本引用：
  required from libc.so.6:
    0x0d696914 0x00 03 GLIBC_2.4
    0x09691a75 0x00 02 GLIBC_2.2.5

节：
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000000238  0000000000000238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000000254  0000000000000254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000000274  0000000000000274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     0000001c  0000000000000298  0000000000000298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       000000d8  00000000000002b8  00000000000002b8  000002b8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       000000a5  0000000000000390  0000000000000390  00000390  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  00000012  0000000000000436  0000000000000436  00000436  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000030  0000000000000448  0000000000000448  00000448  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     000000d8  0000000000000478  0000000000000478  00000478  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000048  0000000000000550  0000000000000550  00000550  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         00000017  0000000000000598  0000000000000598  00000598  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000040  00000000000005b0  00000000000005b0  000005b0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .plt.got      00000008  00000000000005f0  00000000000005f0  000005f0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .text         00000252  0000000000000600  0000000000000600  00000600  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .fini         00000009  0000000000000854  0000000000000854  00000854  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .rodata       0000007c  0000000000000860  0000000000000860  00000860  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame_hdr 00000044  00000000000008dc  00000000000008dc  000008dc  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .eh_frame     00000128  0000000000000920  0000000000000920  00000920  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 18 .init_array   00000008  0000000000200da8  0000000000200da8  00000da8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .fini_array   00000008  0000000000200db0  0000000000200db0  00000db0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001f0  0000000000200db8  0000000000200db8  00000db8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000058  0000000000200fa8  0000000000200fa8  00000fa8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .data         00000018  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .bss          00000120  0000000000201020  0000000000201020  00001018  2**5
                  ALLOC
 24 .comment      0000004f  0000000000000000  0000000000000000  00001018  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000000238 l    d  .interp	0000000000000000              .interp
0000000000000254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000000274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000000298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000000002b8 l    d  .dynsym	0000000000000000              .dynsym
0000000000000390 l    d  .dynstr	0000000000000000              .dynstr
0000000000000436 l    d  .gnu.version	0000000000000000              .gnu.version
0000000000000448 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000000478 l    d  .rela.dyn	0000000000000000              .rela.dyn
0000000000000550 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000000598 l    d  .init	0000000000000000              .init
00000000000005b0 l    d  .plt	0000000000000000              .plt
00000000000005f0 l    d  .plt.got	0000000000000000              .plt.got
0000000000000600 l    d  .text	0000000000000000              .text
0000000000000854 l    d  .fini	0000000000000000              .fini
0000000000000860 l    d  .rodata	0000000000000000              .rodata
00000000000008dc l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000000920 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000200da8 l    d  .init_array	0000000000000000              .init_array
0000000000200db0 l    d  .fini_array	0000000000000000              .fini_array
0000000000200db8 l    d  .dynamic	0000000000000000              .dynamic
0000000000200fa8 l    d  .got	0000000000000000              .got
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201020 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000000630 l     F .text	0000000000000000              deregister_tm_clones
0000000000000670 l     F .text	0000000000000000              register_tm_clones
00000000000006c0 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000201020 l     O .bss	0000000000000001              completed.7697
0000000000200db0 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000000700 l     F .text	0000000000000000              frame_dummy
0000000000200da8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main.c
0000000000000000 l    df *ABS*	0000000000000000              phase3.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000000a44 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000200db0 l       .init_array	0000000000000000              __init_array_end
0000000000200db8 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000200da8 l       .init_array	0000000000000000              __init_array_start
00000000000008dc l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000200fa8 l     O .got	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000000850 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000       F *UND*	0000000000000000              putchar@@GLIBC_2.2.5
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000201000  w      .data	0000000000000000              data_start
0000000000000000       F *UND*	0000000000000000              puts@@GLIBC_2.2.5
0000000000201018 g       .data	0000000000000000              _edata
0000000000000854 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              __stack_chk_fail@@GLIBC_2.4
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000201000 g       .data	0000000000000000              __data_start
0000000000000748 g     F .text	000000000000008a              do_phase
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000000860 g     O .rodata	0000000000000004              _IO_stdin_used
00000000000007e0 g     F .text	0000000000000065              __libc_csu_init
0000000000201140 g       .bss	0000000000000000              _end
0000000000000600 g     F .text	000000000000002b              _start
0000000000201018 g       .bss	0000000000000000              __bss_start
000000000000070a g     F .text	000000000000003e              main
0000000000201040 g     O .bss	0000000000000100              ffcdPDbhJE
0000000000201010 g     O .data	0000000000000008              phase
0000000000201018 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@@GLIBC_2.2.5
0000000000000598 g     F .init	0000000000000000              _init



Disassembly of section .init:

0000000000000598 <_init>:
 598:	48 83 ec 08          	sub    $0x8,%rsp
 59c:	48 8b 05 45 0a 20 00 	mov    0x200a45(%rip),%rax        # 200fe8 <__gmon_start__>
 5a3:	48 85 c0             	test   %rax,%rax
 5a6:	74 02                	je     5aa <_init+0x12>
 5a8:	ff d0                	callq  *%rax
 5aa:	48 83 c4 08          	add    $0x8,%rsp
 5ae:	c3                   	retq   

Disassembly of section .plt:

00000000000005b0 <.plt>:
 5b0:	ff 35 fa 09 20 00    	pushq  0x2009fa(%rip)        # 200fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
 5b6:	ff 25 fc 09 20 00    	jmpq   *0x2009fc(%rip)        # 200fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
 5bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005c0 <putchar@plt>:
 5c0:	ff 25 fa 09 20 00    	jmpq   *0x2009fa(%rip)        # 200fc0 <putchar@GLIBC_2.2.5>
 5c6:	68 00 00 00 00       	pushq  $0x0
 5cb:	e9 e0 ff ff ff       	jmpq   5b0 <.plt>

00000000000005d0 <puts@plt>:
 5d0:	ff 25 f2 09 20 00    	jmpq   *0x2009f2(%rip)        # 200fc8 <puts@GLIBC_2.2.5>
 5d6:	68 01 00 00 00       	pushq  $0x1
 5db:	e9 d0 ff ff ff       	jmpq   5b0 <.plt>

00000000000005e0 <__stack_chk_fail@plt>:
 5e0:	ff 25 ea 09 20 00    	jmpq   *0x2009ea(%rip)        # 200fd0 <__stack_chk_fail@GLIBC_2.4>
 5e6:	68 02 00 00 00       	pushq  $0x2
 5eb:	e9 c0 ff ff ff       	jmpq   5b0 <.plt>

Disassembly of section .plt.got:

00000000000005f0 <__cxa_finalize@plt>:
 5f0:	ff 25 02 0a 20 00    	jmpq   *0x200a02(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000600 <_start>:
 600:	31 ed                	xor    %ebp,%ebp
 602:	49 89 d1             	mov    %rdx,%r9
 605:	5e                   	pop    %rsi
 606:	48 89 e2             	mov    %rsp,%rdx
 609:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 60d:	50                   	push   %rax
 60e:	54                   	push   %rsp
 60f:	4c 8d 05 3a 02 00 00 	lea    0x23a(%rip),%r8        # 850 <__libc_csu_fini>
 616:	48 8d 0d c3 01 00 00 	lea    0x1c3(%rip),%rcx        # 7e0 <__libc_csu_init>
 61d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 70a <main>
 624:	ff 15 b6 09 20 00    	callq  *0x2009b6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 62a:	f4                   	hlt    
 62b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000630 <deregister_tm_clones>:
 630:	48 8d 3d e1 09 20 00 	lea    0x2009e1(%rip),%rdi        # 201018 <__TMC_END__>
 637:	55                   	push   %rbp
 638:	48 8d 05 d9 09 20 00 	lea    0x2009d9(%rip),%rax        # 201018 <__TMC_END__>
 63f:	48 39 f8             	cmp    %rdi,%rax
 642:	48 89 e5             	mov    %rsp,%rbp
 645:	74 19                	je     660 <deregister_tm_clones+0x30>
 647:	48 8b 05 8a 09 20 00 	mov    0x20098a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 64e:	48 85 c0             	test   %rax,%rax
 651:	74 0d                	je     660 <deregister_tm_clones+0x30>
 653:	5d                   	pop    %rbp
 654:	ff e0                	jmpq   *%rax
 656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 65d:	00 00 00 
 660:	5d                   	pop    %rbp
 661:	c3                   	retq   
 662:	0f 1f 40 00          	nopl   0x0(%rax)
 666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 66d:	00 00 00 

0000000000000670 <register_tm_clones>:
 670:	48 8d 3d a1 09 20 00 	lea    0x2009a1(%rip),%rdi        # 201018 <__TMC_END__>
 677:	48 8d 35 9a 09 20 00 	lea    0x20099a(%rip),%rsi        # 201018 <__TMC_END__>
 67e:	55                   	push   %rbp
 67f:	48 29 fe             	sub    %rdi,%rsi
 682:	48 89 e5             	mov    %rsp,%rbp
 685:	48 c1 fe 03          	sar    $0x3,%rsi
 689:	48 89 f0             	mov    %rsi,%rax
 68c:	48 c1 e8 3f          	shr    $0x3f,%rax
 690:	48 01 c6             	add    %rax,%rsi
 693:	48 d1 fe             	sar    %rsi
 696:	74 18                	je     6b0 <register_tm_clones+0x40>
 698:	48 8b 05 51 09 20 00 	mov    0x200951(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 69f:	48 85 c0             	test   %rax,%rax
 6a2:	74 0c                	je     6b0 <register_tm_clones+0x40>
 6a4:	5d                   	pop    %rbp
 6a5:	ff e0                	jmpq   *%rax
 6a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 6ae:	00 00 
 6b0:	5d                   	pop    %rbp
 6b1:	c3                   	retq   
 6b2:	0f 1f 40 00          	nopl   0x0(%rax)
 6b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6bd:	00 00 00 

00000000000006c0 <__do_global_dtors_aux>:
 6c0:	80 3d 59 09 20 00 00 	cmpb   $0x0,0x200959(%rip)        # 201020 <completed.7697>
 6c7:	75 2f                	jne    6f8 <__do_global_dtors_aux+0x38>
 6c9:	48 83 3d 27 09 20 00 	cmpq   $0x0,0x200927(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 6d0:	00 
 6d1:	55                   	push   %rbp
 6d2:	48 89 e5             	mov    %rsp,%rbp
 6d5:	74 0c                	je     6e3 <__do_global_dtors_aux+0x23>
 6d7:	48 8b 3d 2a 09 20 00 	mov    0x20092a(%rip),%rdi        # 201008 <__dso_handle>
 6de:	e8 0d ff ff ff       	callq  5f0 <__cxa_finalize@plt>
 6e3:	e8 48 ff ff ff       	callq  630 <deregister_tm_clones>
 6e8:	c6 05 31 09 20 00 01 	movb   $0x1,0x200931(%rip)        # 201020 <completed.7697>
 6ef:	5d                   	pop    %rbp
 6f0:	c3                   	retq   
 6f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 6f8:	f3 c3                	repz retq 
 6fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000700 <frame_dummy>:
 700:	55                   	push   %rbp
 701:	48 89 e5             	mov    %rsp,%rbp
 704:	5d                   	pop    %rbp
 705:	e9 66 ff ff ff       	jmpq   670 <register_tm_clones>

000000000000070a <main>:
 70a:	55                   	push   %rbp
 70b:	48 89 e5             	mov    %rsp,%rbp
 70e:	48 83 ec 10          	sub    $0x10,%rsp
 712:	89 7d fc             	mov    %edi,-0x4(%rbp)
 715:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
 719:	48 8b 05 f0 08 20 00 	mov    0x2008f0(%rip),%rax        # 201010 <phase>
 720:	48 85 c0             	test   %rax,%rax
 723:	74 10                	je     735 <main+0x2b>
 725:	48 8b 15 e4 08 20 00 	mov    0x2008e4(%rip),%rdx        # 201010 <phase>
 72c:	b8 00 00 00 00       	mov    $0x0,%eax
 731:	ff d2                	callq  *%rdx
 733:	eb 0c                	jmp    741 <main+0x37>
 735:	48 8d 3d 2c 01 00 00 	lea    0x12c(%rip),%rdi        # 868 <_IO_stdin_used+0x8>
 73c:	e8 8f fe ff ff       	callq  5d0 <puts@plt>
 741:	b8 00 00 00 00       	mov    $0x0,%eax
 746:	c9                   	leaveq 
 747:	c3                   	retq   

0000000000000748 <do_phase>:
 748:	55                   	push   %rbp
 749:	48 89 e5             	mov    %rsp,%rbp
 74c:	48 83 ec 20          	sub    $0x20,%rsp
 750:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 757:	00 00 
 759:	48 89 45 f8          	mov    %rax,-0x8(%rbp)             # Canary
 75d:	31 c0                	xor    %eax,%eax
 75f:	48 b8 72 61 6a 6c 75 	movabs $0x656e62756c6a6172,%rax    # rajlubne
 766:	62 6e 65 
 769:	48 89 45 ed          	mov    %rax,-0x13(%rbp)            
 76d:	66 c7 45 f5 78 70    	movw   $0x7078,-0xb(%rbp)          # xp
 773:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
 777:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)            # i = 0 
 77e:	eb 29                	jmp    7a9 <do_phase+0x61>
 780:	8b 45 e8             	mov    -0x18(%rbp),%eax            # [loop begin]
 783:	48 98                	cltq   
 785:	0f b6 44 05 ed       	movzbl -0x13(%rbp,%rax,1),%eax     # "rajlubnexp"[i]
 78a:	0f b6 c0             	movzbl %al,%eax
 78d:	48 63 d0             	movslq %eax,%rdx                   # c = "rajlubnexp"[i]
 790:	48 8d 05 a9 08 20 00 	lea    0x2008a9(%rip),%rax         # prj = <ffcdPDbhJE>
 797:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax          
 79b:	0f be c0             	movsbl %al,%eax
 79e:	89 c7                	mov    %eax,%edi
 7a0:	e8 1b fe ff ff       	callq  5c0 <putchar@plt>           # putchar(prj[c])
 7a5:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)            # i++
 7a9:	8b 45 e8             	mov    -0x18(%rbp),%eax            # [check]
 7ac:	83 f8 09             	cmp    $0x9,%eax                   
 7af:	76 cf                	jbe    780 <do_phase+0x38>         # i<=9 ? goto loop
 7b1:	bf 0a 00 00 00       	mov    $0xa,%edi
 7b6:	e8 05 fe ff ff       	callq  5c0 <putchar@plt>           # puts("")
 7bb:	90                   	nop
 7bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 7c0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 7c7:	00 00 
 7c9:	74 05                	je     7d0 <do_phase+0x88>
 7cb:	e8 10 fe ff ff       	callq  5e0 <__stack_chk_fail@plt>
 7d0:	c9                   	leaveq 
 7d1:	c3                   	retq   
 7d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7d9:	00 00 00 
 7dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007e0 <__libc_csu_init>:
 7e0:	41 57                	push   %r15
 7e2:	41 56                	push   %r14
 7e4:	49 89 d7             	mov    %rdx,%r15
 7e7:	41 55                	push   %r13
 7e9:	41 54                	push   %r12
 7eb:	4c 8d 25 b6 05 20 00 	lea    0x2005b6(%rip),%r12        # 200da8 <__frame_dummy_init_array_entry>
 7f2:	55                   	push   %rbp
 7f3:	48 8d 2d b6 05 20 00 	lea    0x2005b6(%rip),%rbp        # 200db0 <__init_array_end>
 7fa:	53                   	push   %rbx
 7fb:	41 89 fd             	mov    %edi,%r13d
 7fe:	49 89 f6             	mov    %rsi,%r14
 801:	4c 29 e5             	sub    %r12,%rbp
 804:	48 83 ec 08          	sub    $0x8,%rsp
 808:	48 c1 fd 03          	sar    $0x3,%rbp
 80c:	e8 87 fd ff ff       	callq  598 <_init>
 811:	48 85 ed             	test   %rbp,%rbp
 814:	74 20                	je     836 <__libc_csu_init+0x56>
 816:	31 db                	xor    %ebx,%ebx
 818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 81f:	00 
 820:	4c 89 fa             	mov    %r15,%rdx
 823:	4c 89 f6             	mov    %r14,%rsi
 826:	44 89 ef             	mov    %r13d,%edi
 829:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 82d:	48 83 c3 01          	add    $0x1,%rbx
 831:	48 39 dd             	cmp    %rbx,%rbp
 834:	75 ea                	jne    820 <__libc_csu_init+0x40>
 836:	48 83 c4 08          	add    $0x8,%rsp
 83a:	5b                   	pop    %rbx
 83b:	5d                   	pop    %rbp
 83c:	41 5c                	pop    %r12
 83e:	41 5d                	pop    %r13
 840:	41 5e                	pop    %r14
 842:	41 5f                	pop    %r15
 844:	c3                   	retq   
 845:	90                   	nop
 846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 84d:	00 00 00 

0000000000000850 <__libc_csu_fini>:
 850:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000854 <_fini>:
 854:	48 83 ec 08          	sub    $0x8,%rsp
 858:	48 83 c4 08          	add    $0x8,%rsp
 85c:	c3                   	retq   
