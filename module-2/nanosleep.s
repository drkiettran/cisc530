
nanosleep:     file format elf64-x86-64


Disassembly of section .text:

0000000000401000 <_start>:
  401000:	b8 23 00 00 00       	mov    $0x23,%eax
  401005:	48 bf 00 20 40 00 00 	movabs $0x402000,%rdi
  40100c:	00 00 00 
  40100f:	be 00 00 00 00       	mov    $0x0,%esi
  401014:	0f 05                	syscall 
  401016:	b8 3c 00 00 00       	mov    $0x3c,%eax
  40101b:	bf 00 00 00 00       	mov    $0x0,%edi
  401020:	0f 05                	syscall 
