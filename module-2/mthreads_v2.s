
mthreads_v2:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	pushq  0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 73 2f 00 00 	bnd jmpq *0x2f73(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 5d 2f 00 00 	bnd jmpq *0x2f5d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <pthread_create@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmpq *0x2efd(%rip)        # 3fa8 <pthread_create@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmpq *0x2ef5(%rip)        # 3fb0 <puts@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <printf@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmpq *0x2eed(%rip)        # 3fb8 <printf@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <nanosleep@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmpq *0x2ee5(%rip)        # 3fc0 <nanosleep@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <pthread_join@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmpq *0x2edd(%rip)        # 3fc8 <pthread_join@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <exit@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmpq *0x2ed5(%rip)        # 3fd0 <exit@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	4c 8d 05 86 02 00 00 	lea    0x286(%rip),%r8        # 13a0 <__libc_csu_fini>
    111a:	48 8d 0d 0f 02 00 00 	lea    0x20f(%rip),%rcx        # 1330 <__libc_csu_init>
    1121:	48 8d 3d 2c 01 00 00 	lea    0x12c(%rip),%rdi        # 1254 <main>
    1128:	ff 15 b2 2e 00 00    	callq  *0x2eb2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    112e:	f4                   	hlt    
    112f:	90                   	nop

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 8e 2e 00 00 	mov    0x2e8e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmpq   *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	retq   
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmpq   *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4010 <__TMC_END__>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	callq  1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	callq  1130 <deregister_tm_clones>
    11cc:	c6 05 3d 2e 00 00 01 	movb   $0x1,0x2e3d(%rip)        # 4010 <__TMC_END__>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	retq   
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	retq   
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmpq   1160 <register_tm_clones>

00000000000011e9 <thread_1>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	48 83 ec 20          	sub    $0x20,%rsp
    11f5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    11f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1201:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1208:	eb 38                	jmp    1242 <thread_1+0x59>
    120a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    120e:	48 8b 40 10          	mov    0x10(%rax),%rax
    1212:	be 00 00 00 00       	mov    $0x0,%esi
    1217:	48 89 c7             	mov    %rax,%rdi
    121a:	e8 b1 fe ff ff       	callq  10d0 <nanosleep@plt>
    121f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1223:	48 8b 40 08          	mov    0x8(%rax),%rax
    1227:	8b 55 f4             	mov    -0xc(%rbp),%edx
    122a:	48 89 c6             	mov    %rax,%rsi
    122d:	48 8d 3d d0 0d 00 00 	lea    0xdd0(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1234:	b8 00 00 00 00       	mov    $0x0,%eax
    1239:	e8 82 fe ff ff       	callq  10c0 <printf@plt>
    123e:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1242:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1246:	8b 00                	mov    (%rax),%eax
    1248:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    124b:	7c bd                	jl     120a <thread_1+0x21>
    124d:	b8 00 00 00 00       	mov    $0x0,%eax
    1252:	c9                   	leaveq 
    1253:	c3                   	retq   

0000000000001254 <main>:
    1254:	f3 0f 1e fa          	endbr64 
    1258:	55                   	push   %rbp
    1259:	48 89 e5             	mov    %rsp,%rbp
    125c:	48 83 ec 40          	sub    $0x40,%rsp
    1260:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1267:	00 00 
    1269:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    126d:	31 c0                	xor    %eax,%eax
    126f:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1276:	00 
    1277:	48 c7 45 d8 00 08 af 	movq   $0x2faf0800,-0x28(%rbp)
    127e:	2f 
    127f:	c7 45 e0 08 00 00 00 	movl   $0x8,-0x20(%rbp)
    1286:	48 8d 05 89 0d 00 00 	lea    0xd89(%rip),%rax        # 2016 <_IO_stdin_used+0x16>
    128d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1291:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1295:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1299:	48 8d 3d 82 0d 00 00 	lea    0xd82(%rip),%rdi        # 2022 <_IO_stdin_used+0x22>
    12a0:	e8 0b fe ff ff       	callq  10b0 <puts@plt>
    12a5:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    12a9:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    12ad:	48 89 d1             	mov    %rdx,%rcx
    12b0:	48 8d 15 32 ff ff ff 	lea    -0xce(%rip),%rdx        # 11e9 <thread_1>
    12b7:	be 00 00 00 00       	mov    $0x0,%esi
    12bc:	48 89 c7             	mov    %rax,%rdi
    12bf:	e8 dc fd ff ff       	callq  10a0 <pthread_create@plt>
    12c4:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    12cb:	eb 2b                	jmp    12f8 <main+0xa4>
    12cd:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    12d1:	be 00 00 00 00       	mov    $0x0,%esi
    12d6:	48 89 c7             	mov    %rax,%rdi
    12d9:	e8 f2 fd ff ff       	callq  10d0 <nanosleep@plt>
    12de:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    12e1:	89 c6                	mov    %eax,%esi
    12e3:	48 8d 3d 4c 0d 00 00 	lea    0xd4c(%rip),%rdi        # 2036 <_IO_stdin_used+0x36>
    12ea:	b8 00 00 00 00       	mov    $0x0,%eax
    12ef:	e8 cc fd ff ff       	callq  10c0 <printf@plt>
    12f4:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    12f8:	83 7d c4 05          	cmpl   $0x5,-0x3c(%rbp)
    12fc:	7e cf                	jle    12cd <main+0x79>
    12fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1302:	be 00 00 00 00       	mov    $0x0,%esi
    1307:	48 89 c7             	mov    %rax,%rdi
    130a:	e8 d1 fd ff ff       	callq  10e0 <pthread_join@plt>
    130f:	48 8d 3d 38 0d 00 00 	lea    0xd38(%rip),%rdi        # 204e <_IO_stdin_used+0x4e>
    1316:	e8 95 fd ff ff       	callq  10b0 <puts@plt>
    131b:	bf 00 00 00 00       	mov    $0x0,%edi
    1320:	e8 cb fd ff ff       	callq  10f0 <exit@plt>
    1325:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    132c:	00 00 00 
    132f:	90                   	nop

0000000000001330 <__libc_csu_init>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	41 57                	push   %r15
    1336:	4c 8d 3d 43 2a 00 00 	lea    0x2a43(%rip),%r15        # 3d80 <__frame_dummy_init_array_entry>
    133d:	41 56                	push   %r14
    133f:	49 89 d6             	mov    %rdx,%r14
    1342:	41 55                	push   %r13
    1344:	49 89 f5             	mov    %rsi,%r13
    1347:	41 54                	push   %r12
    1349:	41 89 fc             	mov    %edi,%r12d
    134c:	55                   	push   %rbp
    134d:	48 8d 2d 34 2a 00 00 	lea    0x2a34(%rip),%rbp        # 3d88 <__do_global_dtors_aux_fini_array_entry>
    1354:	53                   	push   %rbx
    1355:	4c 29 fd             	sub    %r15,%rbp
    1358:	48 83 ec 08          	sub    $0x8,%rsp
    135c:	e8 9f fc ff ff       	callq  1000 <_init>
    1361:	48 c1 fd 03          	sar    $0x3,%rbp
    1365:	74 1f                	je     1386 <__libc_csu_init+0x56>
    1367:	31 db                	xor    %ebx,%ebx
    1369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1370:	4c 89 f2             	mov    %r14,%rdx
    1373:	4c 89 ee             	mov    %r13,%rsi
    1376:	44 89 e7             	mov    %r12d,%edi
    1379:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    137d:	48 83 c3 01          	add    $0x1,%rbx
    1381:	48 39 dd             	cmp    %rbx,%rbp
    1384:	75 ea                	jne    1370 <__libc_csu_init+0x40>
    1386:	48 83 c4 08          	add    $0x8,%rsp
    138a:	5b                   	pop    %rbx
    138b:	5d                   	pop    %rbp
    138c:	41 5c                	pop    %r12
    138e:	41 5d                	pop    %r13
    1390:	41 5e                	pop    %r14
    1392:	41 5f                	pop    %r15
    1394:	c3                   	retq   
    1395:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    139c:	00 00 00 00 

00000000000013a0 <__libc_csu_fini>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	c3                   	retq   

Disassembly of section .fini:

00000000000013a8 <_fini>:
    13a8:	f3 0f 1e fa          	endbr64 
    13ac:	48 83 ec 08          	sub    $0x8,%rsp
    13b0:	48 83 c4 08          	add    $0x8,%rsp
    13b4:	c3                   	retq   
