
helloworld:     file format elf64-x86-64


Disassembly of section .text:

0000000000401000 <_start>:
  401000:	b8 01 00 00 00       	mov    $0x1,%eax
  401005:	bf 01 00 00 00       	mov    $0x1,%edi
  40100a:	48 be 00 20 40 00 00 	movabs $0x402000,%rsi
  401011:	00 00 00 
  401014:	ba 0e 00 00 00       	mov    $0xe,%edx
  401019:	0f 05                	syscall 
  40101b:	b8 3c 00 00 00       	mov    $0x3c,%eax
  401020:	48 31 ff             	xor    %rdi,%rdi
  401023:	0f 05                	syscall 
