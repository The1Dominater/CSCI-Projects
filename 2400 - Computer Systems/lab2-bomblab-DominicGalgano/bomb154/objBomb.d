#objdump -d bomb > objBomb.d

bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 d2 3e 00 00    	push   0x3ed2(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 d3 3e 00 00 	bnd jmp *0x3ed3(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 1d 3e 00 00 	bnd jmp *0x3e1d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011e0 <getenv@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 1d 3d 00 00 	bnd jmp *0x3d1d(%rip)        # 4f08 <getenv@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <__errno_location@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 15 3d 00 00 	bnd jmp *0x3d15(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcpy@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 0d 3d 00 00 	bnd jmp *0x3d0d(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <puts@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <write@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strlen@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f30 <strlen@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <alarm@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <close@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <read@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <fgets@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <strcmp@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <signal@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <gethostbyname@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <__memmove_chk@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <strtol@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <fflush@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <__isoc99_sscanf@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__printf_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <fopen@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <exit@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <connect@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__fprintf_chk@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <sleep@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__ctype_b_loc@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__sprintf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <socket@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001380 <_start>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	31 ed                	xor    %ebp,%ebp
    1386:	49 89 d1             	mov    %rdx,%r9
    1389:	5e                   	pop    %rsi
    138a:	48 89 e2             	mov    %rsp,%rdx
    138d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1391:	50                   	push   %rax
    1392:	54                   	push   %rsp
    1393:	45 31 c0             	xor    %r8d,%r8d
    1396:	31 c9                	xor    %ecx,%ecx
    1398:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1469 <main>
    139f:	ff 15 33 3c 00 00    	call   *0x3c33(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13a5:	f4                   	hlt    
    13a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ad:	00 00 00 

00000000000013b0 <deregister_tm_clones>:
    13b0:	48 8d 3d c9 46 00 00 	lea    0x46c9(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13b7:	48 8d 05 c2 46 00 00 	lea    0x46c2(%rip),%rax        # 5a80 <stdout@GLIBC_2.2.5>
    13be:	48 39 f8             	cmp    %rdi,%rax
    13c1:	74 15                	je     13d8 <deregister_tm_clones+0x28>
    13c3:	48 8b 05 16 3c 00 00 	mov    0x3c16(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ca:	48 85 c0             	test   %rax,%rax
    13cd:	74 09                	je     13d8 <deregister_tm_clones+0x28>
    13cf:	ff e0                	jmp    *%rax
    13d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13d8:	c3                   	ret    
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <register_tm_clones>:
    13e0:	48 8d 3d 99 46 00 00 	lea    0x4699(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13e7:	48 8d 35 92 46 00 00 	lea    0x4692(%rip),%rsi        # 5a80 <stdout@GLIBC_2.2.5>
    13ee:	48 29 fe             	sub    %rdi,%rsi
    13f1:	48 89 f0             	mov    %rsi,%rax
    13f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13f8:	48 c1 f8 03          	sar    $0x3,%rax
    13fc:	48 01 c6             	add    %rax,%rsi
    13ff:	48 d1 fe             	sar    %rsi
    1402:	74 14                	je     1418 <register_tm_clones+0x38>
    1404:	48 8b 05 e5 3b 00 00 	mov    0x3be5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    140b:	48 85 c0             	test   %rax,%rax
    140e:	74 08                	je     1418 <register_tm_clones+0x38>
    1410:	ff e0                	jmp    *%rax
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1418:	c3                   	ret    
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <__do_global_dtors_aux>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	80 3d 7d 46 00 00 00 	cmpb   $0x0,0x467d(%rip)        # 5aa8 <completed.0>
    142b:	75 2b                	jne    1458 <__do_global_dtors_aux+0x38>
    142d:	55                   	push   %rbp
    142e:	48 83 3d c2 3b 00 00 	cmpq   $0x0,0x3bc2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1435:	00 
    1436:	48 89 e5             	mov    %rsp,%rbp
    1439:	74 0c                	je     1447 <__do_global_dtors_aux+0x27>
    143b:	48 8b 3d c6 3b 00 00 	mov    0x3bc6(%rip),%rdi        # 5008 <__dso_handle>
    1442:	e8 89 fd ff ff       	call   11d0 <__cxa_finalize@plt>
    1447:	e8 64 ff ff ff       	call   13b0 <deregister_tm_clones>
    144c:	c6 05 55 46 00 00 01 	movb   $0x1,0x4655(%rip)        # 5aa8 <completed.0>
    1453:	5d                   	pop    %rbp
    1454:	c3                   	ret    
    1455:	0f 1f 00             	nopl   (%rax)
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <frame_dummy>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	e9 77 ff ff ff       	jmp    13e0 <register_tm_clones>

0000000000001469 <main>:
    1469:	f3 0f 1e fa          	endbr64 
    146d:	53                   	push   %rbx
    146e:	83 ff 01             	cmp    $0x1,%edi
    1471:	0f 84 f8 00 00 00    	je     156f <main+0x106>
    1477:	48 89 f3             	mov    %rsi,%rbx
    147a:	83 ff 02             	cmp    $0x2,%edi
    147d:	0f 85 21 01 00 00    	jne    15a4 <main+0x13b>
    1483:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1487:	48 8d 35 76 1b 00 00 	lea    0x1b76(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    148e:	e8 6d fe ff ff       	call   1300 <fopen@plt>
    1493:	48 89 05 16 46 00 00 	mov    %rax,0x4616(%rip)        # 5ab0 <infile>
    149a:	48 85 c0             	test   %rax,%rax
    149d:	0f 84 df 00 00 00    	je     1582 <main+0x119>
    14a3:	e8 46 06 00 00       	call   1aee <initialize_bomb>
    14a8:	48 8d 3d d9 1b 00 00 	lea    0x1bd9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14af:	e8 5c fd ff ff       	call   1210 <puts@plt>
    14b4:	48 8d 3d 0d 1c 00 00 	lea    0x1c0d(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14bb:	e8 50 fd ff ff       	call   1210 <puts@plt>
    14c0:	e8 62 08 00 00       	call   1d27 <read_line>
    14c5:	48 89 c7             	mov    %rax,%rdi
    14c8:	e8 fa 00 00 00       	call   15c7 <phase_1>
    14cd:	e8 84 09 00 00       	call   1e56 <phase_defused>
    14d2:	48 8d 3d 1f 1c 00 00 	lea    0x1c1f(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14d9:	e8 32 fd ff ff       	call   1210 <puts@plt>
    14de:	e8 44 08 00 00       	call   1d27 <read_line>
    14e3:	48 89 c7             	mov    %rax,%rdi
    14e6:	e8 00 01 00 00       	call   15eb <phase_2>
    14eb:	e8 66 09 00 00       	call   1e56 <phase_defused>
    14f0:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    14f7:	e8 14 fd ff ff       	call   1210 <puts@plt>
    14fc:	e8 26 08 00 00       	call   1d27 <read_line>
    1501:	48 89 c7             	mov    %rax,%rdi
    1504:	e8 31 01 00 00       	call   163a <phase_3>
    1509:	e8 48 09 00 00       	call   1e56 <phase_defused>
    150e:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1515:	e8 f6 fc ff ff       	call   1210 <puts@plt>
    151a:	e8 08 08 00 00       	call   1d27 <read_line>
    151f:	48 89 c7             	mov    %rax,%rdi
    1522:	e8 19 02 00 00       	call   1740 <phase_4>
    1527:	e8 2a 09 00 00       	call   1e56 <phase_defused>
    152c:	48 8d 3d f5 1b 00 00 	lea    0x1bf5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1533:	e8 d8 fc ff ff       	call   1210 <puts@plt>
    1538:	e8 ea 07 00 00       	call   1d27 <read_line>
    153d:	48 89 c7             	mov    %rax,%rdi
    1540:	e8 54 02 00 00       	call   1799 <phase_5>
    1545:	e8 0c 09 00 00       	call   1e56 <phase_defused>
    154a:	48 8d 3d 19 1b 00 00 	lea    0x1b19(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1551:	e8 ba fc ff ff       	call   1210 <puts@plt>
    1556:	e8 cc 07 00 00       	call   1d27 <read_line>
    155b:	48 89 c7             	mov    %rax,%rdi
    155e:	e8 82 02 00 00       	call   17e5 <phase_6>
    1563:	e8 ee 08 00 00       	call   1e56 <phase_defused>
    1568:	b8 00 00 00 00       	mov    $0x0,%eax
    156d:	5b                   	pop    %rbx
    156e:	c3                   	ret    
    156f:	48 8b 05 1a 45 00 00 	mov    0x451a(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1576:	48 89 05 33 45 00 00 	mov    %rax,0x4533(%rip)        # 5ab0 <infile>
    157d:	e9 21 ff ff ff       	jmp    14a3 <main+0x3a>
    1582:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1586:	48 8b 13             	mov    (%rbx),%rdx
    1589:	48 8d 35 76 1a 00 00 	lea    0x1a76(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1590:	bf 01 00 00 00       	mov    $0x1,%edi
    1595:	e8 56 fd ff ff       	call   12f0 <__printf_chk@plt>
    159a:	bf 08 00 00 00       	mov    $0x8,%edi
    159f:	e8 6c fd ff ff       	call   1310 <exit@plt>
    15a4:	48 8b 16             	mov    (%rsi),%rdx
    15a7:	48 8d 35 75 1a 00 00 	lea    0x1a75(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	b8 00 00 00 00       	mov    $0x0,%eax
    15b8:	e8 33 fd ff ff       	call   12f0 <__printf_chk@plt>
    15bd:	bf 08 00 00 00       	mov    $0x8,%edi
    15c2:	e8 49 fd ff ff       	call   1310 <exit@plt>

00000000000015c7 <phase_1>:
    15c7:	f3 0f 1e fa          	endbr64 
    15cb:	48 83 ec 08          	sub    $0x8,%rsp
    15cf:	48 8d 35 7a 1b 00 00 	lea    0x1b7a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15d6:	e8 a1 04 00 00       	call   1a7c <strings_not_equal>
    15db:	85 c0                	test   %eax,%eax
    15dd:	75 05                	jne    15e4 <phase_1+0x1d>
    15df:	48 83 c4 08          	add    $0x8,%rsp
    15e3:	c3                   	ret    
    15e4:	e8 ac 06 00 00       	call   1c95 <explode_bomb>
    15e9:	eb f4                	jmp    15df <phase_1+0x18>

00000000000015eb <phase_2>:
    15eb:	f3 0f 1e fa          	endbr64 
    15ef:	55                   	push   %rbp
    15f0:	53                   	push   %rbx
    15f1:	48 83 ec 28          	sub    $0x28,%rsp
    15f5:	48 89 e6             	mov    %rsp,%rsi
    15f8:	e8 e5 06 00 00       	call   1ce2 <read_six_numbers>
    15fd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1601:	75 07                	jne    160a <phase_2+0x1f>
    1603:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1608:	74 05                	je     160f <phase_2+0x24>
    160a:	e8 86 06 00 00       	call   1c95 <explode_bomb>
    160f:	48 89 e3             	mov    %rsp,%rbx
    1612:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    1617:	eb 09                	jmp    1622 <phase_2+0x37>
    1619:	48 83 c3 04          	add    $0x4,%rbx
    161d:	48 39 eb             	cmp    %rbp,%rbx
    1620:	74 11                	je     1633 <phase_2+0x48>
    1622:	8b 43 04             	mov    0x4(%rbx),%eax
    1625:	03 03                	add    (%rbx),%eax
    1627:	39 43 08             	cmp    %eax,0x8(%rbx)
    162a:	74 ed                	je     1619 <phase_2+0x2e>
    162c:	e8 64 06 00 00       	call   1c95 <explode_bomb>
    1631:	eb e6                	jmp    1619 <phase_2+0x2e>
    1633:	48 83 c4 28          	add    $0x28,%rsp
    1637:	5b                   	pop    %rbx
    1638:	5d                   	pop    %rbp
    1639:	c3                   	ret    

000000000000163a <phase_3>:
    163a:	f3 0f 1e fa          	endbr64 
    163e:	48 83 ec 18          	sub    $0x18,%rsp
    1642:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1647:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    164c:	48 8d 35 93 1d 00 00 	lea    0x1d93(%rip),%rsi        # 33e6 <array.0+0x1e6>
    1653:	b8 00 00 00 00       	mov    $0x0,%eax
    1658:	e8 83 fc ff ff       	call   12e0 <__isoc99_sscanf@plt>
    165d:	83 f8 01             	cmp    $0x1,%eax
    1660:	7e 20                	jle    1682 <phase_3+0x48>
    1662:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    1667:	0f 87 8c 00 00 00    	ja     16f9 <phase_3+0xbf>
    166d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1671:	48 8d 15 68 1b 00 00 	lea    0x1b68(%rip),%rdx        # 31e0 <_IO_stdin_used+0x1e0>
    1678:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    167c:	48 01 d0             	add    %rdx,%rax
    167f:	3e ff e0             	notrack jmp *%rax
    1682:	e8 0e 06 00 00       	call   1c95 <explode_bomb>
    1687:	eb d9                	jmp    1662 <phase_3+0x28>
    1689:	b8 b5 02 00 00       	mov    $0x2b5,%eax
    168e:	2d 24 02 00 00       	sub    $0x224,%eax
    1693:	05 70 01 00 00       	add    $0x170,%eax
    1698:	2d f5 00 00 00       	sub    $0xf5,%eax
    169d:	05 f5 00 00 00       	add    $0xf5,%eax
    16a2:	2d f5 00 00 00       	sub    $0xf5,%eax
    16a7:	05 f5 00 00 00       	add    $0xf5,%eax
    16ac:	2d f5 00 00 00       	sub    $0xf5,%eax
    16b1:	83 7c 24 0c 05       	cmpl   $0x5,0xc(%rsp)
    16b6:	7f 06                	jg     16be <phase_3+0x84>
    16b8:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    16bc:	74 05                	je     16c3 <phase_3+0x89>
    16be:	e8 d2 05 00 00       	call   1c95 <explode_bomb>
    16c3:	48 83 c4 18          	add    $0x18,%rsp
    16c7:	c3                   	ret    
    16c8:	b8 00 00 00 00       	mov    $0x0,%eax
    16cd:	eb bf                	jmp    168e <phase_3+0x54>
    16cf:	b8 00 00 00 00       	mov    $0x0,%eax
    16d4:	eb bd                	jmp    1693 <phase_3+0x59>
    16d6:	b8 00 00 00 00       	mov    $0x0,%eax
    16db:	eb bb                	jmp    1698 <phase_3+0x5e>
    16dd:	b8 00 00 00 00       	mov    $0x0,%eax
    16e2:	eb b9                	jmp    169d <phase_3+0x63>
    16e4:	b8 00 00 00 00       	mov    $0x0,%eax
    16e9:	eb b7                	jmp    16a2 <phase_3+0x68>
    16eb:	b8 00 00 00 00       	mov    $0x0,%eax
    16f0:	eb b5                	jmp    16a7 <phase_3+0x6d>
    16f2:	b8 00 00 00 00       	mov    $0x0,%eax
    16f7:	eb b3                	jmp    16ac <phase_3+0x72>
    16f9:	e8 97 05 00 00       	call   1c95 <explode_bomb>
    16fe:	b8 00 00 00 00       	mov    $0x0,%eax
    1703:	eb ac                	jmp    16b1 <phase_3+0x77>

0000000000001705 <func4>:
    1705:	f3 0f 1e fa          	endbr64 
    1709:	b8 00 00 00 00       	mov    $0x0,%eax
    170e:	85 ff                	test   %edi,%edi
    1710:	7e 2d                	jle    173f <func4+0x3a>
    1712:	41 54                	push   %r12
    1714:	55                   	push   %rbp
    1715:	53                   	push   %rbx
    1716:	89 fb                	mov    %edi,%ebx
    1718:	89 f5                	mov    %esi,%ebp
    171a:	89 f0                	mov    %esi,%eax
    171c:	83 ff 01             	cmp    $0x1,%edi
    171f:	74 19                	je     173a <func4+0x35>
    1721:	8d 7f ff             	lea    -0x1(%rdi),%edi
    1724:	e8 dc ff ff ff       	call   1705 <func4>
    1729:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
    172d:	8d 7b fe             	lea    -0x2(%rbx),%edi
    1730:	89 ee                	mov    %ebp,%esi
    1732:	e8 ce ff ff ff       	call   1705 <func4>
    1737:	44 01 e0             	add    %r12d,%eax
    173a:	5b                   	pop    %rbx
    173b:	5d                   	pop    %rbp
    173c:	41 5c                	pop    %r12
    173e:	c3                   	ret    
    173f:	c3                   	ret    

0000000000001740 <phase_4>:
    1740:	f3 0f 1e fa          	endbr64 
    1744:	48 83 ec 18          	sub    $0x18,%rsp
    1748:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    174d:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1752:	48 8d 35 8d 1c 00 00 	lea    0x1c8d(%rip),%rsi        # 33e6 <array.0+0x1e6>
    1759:	b8 00 00 00 00       	mov    $0x0,%eax
    175e:	e8 7d fb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1763:	83 f8 02             	cmp    $0x2,%eax
    1766:	75 0c                	jne    1774 <phase_4+0x34>
    1768:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    176c:	83 e8 02             	sub    $0x2,%eax
    176f:	83 f8 02             	cmp    $0x2,%eax
    1772:	76 05                	jbe    1779 <phase_4+0x39>
    1774:	e8 1c 05 00 00       	call   1c95 <explode_bomb>
    1779:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    177d:	bf 06 00 00 00       	mov    $0x6,%edi
    1782:	e8 7e ff ff ff       	call   1705 <func4>
    1787:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    178b:	75 05                	jne    1792 <phase_4+0x52>
    178d:	48 83 c4 18          	add    $0x18,%rsp
    1791:	c3                   	ret    
    1792:	e8 fe 04 00 00       	call   1c95 <explode_bomb>
    1797:	eb f4                	jmp    178d <phase_4+0x4d>

0000000000001799 <phase_5>:
    1799:	f3 0f 1e fa          	endbr64 
    179d:	53                   	push   %rbx
    179e:	48 89 fb             	mov    %rdi,%rbx
    17a1:	e8 b5 02 00 00       	call   1a5b <string_length>
    17a6:	83 f8 06             	cmp    $0x6,%eax
    17a9:	75 2c                	jne    17d7 <phase_5+0x3e>
    17ab:	48 89 d8             	mov    %rbx,%rax
    17ae:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    17b2:	b9 00 00 00 00       	mov    $0x0,%ecx
    17b7:	48 8d 35 42 1a 00 00 	lea    0x1a42(%rip),%rsi        # 3200 <array.0>
    17be:	0f b6 10             	movzbl (%rax),%edx
    17c1:	83 e2 0f             	and    $0xf,%edx
    17c4:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    17c7:	48 83 c0 01          	add    $0x1,%rax
    17cb:	48 39 f8             	cmp    %rdi,%rax
    17ce:	75 ee                	jne    17be <phase_5+0x25>
    17d0:	83 f9 32             	cmp    $0x32,%ecx
    17d3:	75 09                	jne    17de <phase_5+0x45>
    17d5:	5b                   	pop    %rbx
    17d6:	c3                   	ret    
    17d7:	e8 b9 04 00 00       	call   1c95 <explode_bomb>
    17dc:	eb cd                	jmp    17ab <phase_5+0x12>
    17de:	e8 b2 04 00 00       	call   1c95 <explode_bomb>
    17e3:	eb f0                	jmp    17d5 <phase_5+0x3c>

00000000000017e5 <phase_6>:
    17e5:	f3 0f 1e fa          	endbr64 
    17e9:	41 57                	push   %r15
    17eb:	41 56                	push   %r14
    17ed:	41 55                	push   %r13
    17ef:	41 54                	push   %r12
    17f1:	55                   	push   %rbp
    17f2:	53                   	push   %rbx
    17f3:	48 83 ec 68          	sub    $0x68,%rsp
    17f7:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    17fc:	49 89 c6             	mov    %rax,%r14
    17ff:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1804:	48 89 c6             	mov    %rax,%rsi
    1807:	e8 d6 04 00 00       	call   1ce2 <read_six_numbers>
    180c:	4d 89 f4             	mov    %r14,%r12
    180f:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1815:	4d 89 f5             	mov    %r14,%r13
    1818:	e9 c6 00 00 00       	jmp    18e3 <phase_6+0xfe>
    181d:	e8 73 04 00 00       	call   1c95 <explode_bomb>
    1822:	e9 ce 00 00 00       	jmp    18f5 <phase_6+0x110>
    1827:	48 83 c3 01          	add    $0x1,%rbx
    182b:	83 fb 05             	cmp    $0x5,%ebx
    182e:	0f 8f a7 00 00 00    	jg     18db <phase_6+0xf6>
    1834:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    1839:	39 45 00             	cmp    %eax,0x0(%rbp)
    183c:	75 e9                	jne    1827 <phase_6+0x42>
    183e:	e8 52 04 00 00       	call   1c95 <explode_bomb>
    1843:	eb e2                	jmp    1827 <phase_6+0x42>
    1845:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    184a:	48 83 c2 18          	add    $0x18,%rdx
    184e:	b9 07 00 00 00       	mov    $0x7,%ecx
    1853:	89 c8                	mov    %ecx,%eax
    1855:	41 2b 04 24          	sub    (%r12),%eax
    1859:	41 89 04 24          	mov    %eax,(%r12)
    185d:	49 83 c4 04          	add    $0x4,%r12
    1861:	4c 39 e2             	cmp    %r12,%rdx
    1864:	75 ed                	jne    1853 <phase_6+0x6e>
    1866:	be 00 00 00 00       	mov    $0x0,%esi
    186b:	8b 4c b4 40          	mov    0x40(%rsp,%rsi,4),%ecx
    186f:	b8 01 00 00 00       	mov    $0x1,%eax
    1874:	48 8d 15 b5 3d 00 00 	lea    0x3db5(%rip),%rdx        # 5630 <node1>
    187b:	83 f9 01             	cmp    $0x1,%ecx
    187e:	7e 0b                	jle    188b <phase_6+0xa6>
    1880:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1884:	83 c0 01             	add    $0x1,%eax
    1887:	39 c8                	cmp    %ecx,%eax
    1889:	75 f5                	jne    1880 <phase_6+0x9b>
    188b:	48 89 54 f4 10       	mov    %rdx,0x10(%rsp,%rsi,8)
    1890:	48 83 c6 01          	add    $0x1,%rsi
    1894:	48 83 fe 06          	cmp    $0x6,%rsi
    1898:	75 d1                	jne    186b <phase_6+0x86>
    189a:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    189f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    18a4:	48 89 43 08          	mov    %rax,0x8(%rbx)
    18a8:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    18ad:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18b1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18b6:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18ba:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    18bf:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18c3:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    18c8:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18cc:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    18d3:	00 
    18d4:	bd 05 00 00 00       	mov    $0x5,%ebp
    18d9:	eb 35                	jmp    1910 <phase_6+0x12b>
    18db:	49 83 c7 01          	add    $0x1,%r15
    18df:	49 83 c6 04          	add    $0x4,%r14
    18e3:	4c 89 f5             	mov    %r14,%rbp
    18e6:	41 8b 06             	mov    (%r14),%eax
    18e9:	83 e8 01             	sub    $0x1,%eax
    18ec:	83 f8 05             	cmp    $0x5,%eax
    18ef:	0f 87 28 ff ff ff    	ja     181d <phase_6+0x38>
    18f5:	41 83 ff 05          	cmp    $0x5,%r15d
    18f9:	0f 8f 46 ff ff ff    	jg     1845 <phase_6+0x60>
    18ff:	4c 89 fb             	mov    %r15,%rbx
    1902:	e9 2d ff ff ff       	jmp    1834 <phase_6+0x4f>
    1907:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    190b:	83 ed 01             	sub    $0x1,%ebp
    190e:	74 11                	je     1921 <phase_6+0x13c>
    1910:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1914:	8b 00                	mov    (%rax),%eax
    1916:	39 03                	cmp    %eax,(%rbx)
    1918:	7d ed                	jge    1907 <phase_6+0x122>
    191a:	e8 76 03 00 00       	call   1c95 <explode_bomb>
    191f:	eb e6                	jmp    1907 <phase_6+0x122>
    1921:	48 83 c4 68          	add    $0x68,%rsp
    1925:	5b                   	pop    %rbx
    1926:	5d                   	pop    %rbp
    1927:	41 5c                	pop    %r12
    1929:	41 5d                	pop    %r13
    192b:	41 5e                	pop    %r14
    192d:	41 5f                	pop    %r15
    192f:	c3                   	ret    

0000000000001930 <fun7>:
    1930:	f3 0f 1e fa          	endbr64 
    1934:	48 85 ff             	test   %rdi,%rdi
    1937:	74 32                	je     196b <fun7+0x3b>
    1939:	48 83 ec 08          	sub    $0x8,%rsp
    193d:	8b 17                	mov    (%rdi),%edx
    193f:	39 f2                	cmp    %esi,%edx
    1941:	7f 0c                	jg     194f <fun7+0x1f>
    1943:	b8 00 00 00 00       	mov    $0x0,%eax
    1948:	75 12                	jne    195c <fun7+0x2c>
    194a:	48 83 c4 08          	add    $0x8,%rsp
    194e:	c3                   	ret    
    194f:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1953:	e8 d8 ff ff ff       	call   1930 <fun7>
    1958:	01 c0                	add    %eax,%eax
    195a:	eb ee                	jmp    194a <fun7+0x1a>
    195c:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1960:	e8 cb ff ff ff       	call   1930 <fun7>
    1965:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1969:	eb df                	jmp    194a <fun7+0x1a>
    196b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1970:	c3                   	ret    

0000000000001971 <secret_phase>:
    1971:	f3 0f 1e fa          	endbr64 
    1975:	53                   	push   %rbx
    1976:	e8 ac 03 00 00       	call   1d27 <read_line>
    197b:	48 89 c7             	mov    %rax,%rdi
    197e:	ba 0a 00 00 00       	mov    $0xa,%edx
    1983:	be 00 00 00 00       	mov    $0x0,%esi
    1988:	e8 33 f9 ff ff       	call   12c0 <strtol@plt>
    198d:	89 c3                	mov    %eax,%ebx
    198f:	83 e8 01             	sub    $0x1,%eax
    1992:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1997:	77 25                	ja     19be <secret_phase+0x4d>
    1999:	89 de                	mov    %ebx,%esi
    199b:	48 8d 3d ae 3b 00 00 	lea    0x3bae(%rip),%rdi        # 5550 <n1>
    19a2:	e8 89 ff ff ff       	call   1930 <fun7>
    19a7:	85 c0                	test   %eax,%eax
    19a9:	75 1a                	jne    19c5 <secret_phase+0x54>
    19ab:	48 8d 3d ee 17 00 00 	lea    0x17ee(%rip),%rdi        # 31a0 <_IO_stdin_used+0x1a0>
    19b2:	e8 59 f8 ff ff       	call   1210 <puts@plt>
    19b7:	e8 9a 04 00 00       	call   1e56 <phase_defused>
    19bc:	5b                   	pop    %rbx
    19bd:	c3                   	ret    
    19be:	e8 d2 02 00 00       	call   1c95 <explode_bomb>
    19c3:	eb d4                	jmp    1999 <secret_phase+0x28>
    19c5:	e8 cb 02 00 00       	call   1c95 <explode_bomb>
    19ca:	eb df                	jmp    19ab <secret_phase+0x3a>

00000000000019cc <sig_handler>:
    19cc:	f3 0f 1e fa          	endbr64 
    19d0:	50                   	push   %rax
    19d1:	58                   	pop    %rax
    19d2:	48 83 ec 08          	sub    $0x8,%rsp
    19d6:	48 8d 3d 63 18 00 00 	lea    0x1863(%rip),%rdi        # 3240 <array.0+0x40>
    19dd:	e8 2e f8 ff ff       	call   1210 <puts@plt>
    19e2:	bf 03 00 00 00       	mov    $0x3,%edi
    19e7:	e8 54 f9 ff ff       	call   1340 <sleep@plt>
    19ec:	48 8d 35 7e 19 00 00 	lea    0x197e(%rip),%rsi        # 3371 <array.0+0x171>
    19f3:	bf 01 00 00 00       	mov    $0x1,%edi
    19f8:	b8 00 00 00 00       	mov    $0x0,%eax
    19fd:	e8 ee f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a02:	48 8b 3d 77 40 00 00 	mov    0x4077(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    1a09:	e8 c2 f8 ff ff       	call   12d0 <fflush@plt>
    1a0e:	bf 01 00 00 00       	mov    $0x1,%edi
    1a13:	e8 28 f9 ff ff       	call   1340 <sleep@plt>
    1a18:	48 8d 3d 5a 19 00 00 	lea    0x195a(%rip),%rdi        # 3379 <array.0+0x179>
    1a1f:	e8 ec f7 ff ff       	call   1210 <puts@plt>
    1a24:	bf 10 00 00 00       	mov    $0x10,%edi
    1a29:	e8 e2 f8 ff ff       	call   1310 <exit@plt>

0000000000001a2e <invalid_phase>:
    1a2e:	f3 0f 1e fa          	endbr64 
    1a32:	50                   	push   %rax
    1a33:	58                   	pop    %rax
    1a34:	48 83 ec 08          	sub    $0x8,%rsp
    1a38:	48 89 fa             	mov    %rdi,%rdx
    1a3b:	48 8d 35 3f 19 00 00 	lea    0x193f(%rip),%rsi        # 3381 <array.0+0x181>
    1a42:	bf 01 00 00 00       	mov    $0x1,%edi
    1a47:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4c:	e8 9f f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a51:	bf 08 00 00 00       	mov    $0x8,%edi
    1a56:	e8 b5 f8 ff ff       	call   1310 <exit@plt>

0000000000001a5b <string_length>:
    1a5b:	f3 0f 1e fa          	endbr64 
    1a5f:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a62:	74 12                	je     1a76 <string_length+0x1b>
    1a64:	b8 00 00 00 00       	mov    $0x0,%eax
    1a69:	48 83 c7 01          	add    $0x1,%rdi
    1a6d:	83 c0 01             	add    $0x1,%eax
    1a70:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a73:	75 f4                	jne    1a69 <string_length+0xe>
    1a75:	c3                   	ret    
    1a76:	b8 00 00 00 00       	mov    $0x0,%eax
    1a7b:	c3                   	ret    

0000000000001a7c <strings_not_equal>:
    1a7c:	f3 0f 1e fa          	endbr64 
    1a80:	41 54                	push   %r12
    1a82:	55                   	push   %rbp
    1a83:	53                   	push   %rbx
    1a84:	48 89 fb             	mov    %rdi,%rbx
    1a87:	48 89 f5             	mov    %rsi,%rbp
    1a8a:	e8 cc ff ff ff       	call   1a5b <string_length>
    1a8f:	41 89 c4             	mov    %eax,%r12d
    1a92:	48 89 ef             	mov    %rbp,%rdi
    1a95:	e8 c1 ff ff ff       	call   1a5b <string_length>
    1a9a:	89 c2                	mov    %eax,%edx
    1a9c:	b8 01 00 00 00       	mov    $0x1,%eax
    1aa1:	41 39 d4             	cmp    %edx,%r12d
    1aa4:	75 31                	jne    1ad7 <strings_not_equal+0x5b>
    1aa6:	0f b6 13             	movzbl (%rbx),%edx
    1aa9:	84 d2                	test   %dl,%dl
    1aab:	74 1e                	je     1acb <strings_not_equal+0x4f>
    1aad:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab2:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1ab6:	75 1a                	jne    1ad2 <strings_not_equal+0x56>
    1ab8:	48 83 c0 01          	add    $0x1,%rax
    1abc:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1ac0:	84 d2                	test   %dl,%dl
    1ac2:	75 ee                	jne    1ab2 <strings_not_equal+0x36>
    1ac4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ac9:	eb 0c                	jmp    1ad7 <strings_not_equal+0x5b>
    1acb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad0:	eb 05                	jmp    1ad7 <strings_not_equal+0x5b>
    1ad2:	b8 01 00 00 00       	mov    $0x1,%eax
    1ad7:	5b                   	pop    %rbx
    1ad8:	5d                   	pop    %rbp
    1ad9:	41 5c                	pop    %r12
    1adb:	c3                   	ret    

0000000000001adc <strings_are_equal>:
    1adc:	f3 0f 1e fa          	endbr64 
    1ae0:	e8 97 ff ff ff       	call   1a7c <strings_not_equal>
    1ae5:	85 c0                	test   %eax,%eax
    1ae7:	0f 94 c0             	sete   %al
    1aea:	0f b6 c0             	movzbl %al,%eax
    1aed:	c3                   	ret    

0000000000001aee <initialize_bomb>:
    1aee:	f3 0f 1e fa          	endbr64 
    1af2:	48 83 ec 08          	sub    $0x8,%rsp
    1af6:	48 8d 35 cf fe ff ff 	lea    -0x131(%rip),%rsi        # 19cc <sig_handler>
    1afd:	bf 02 00 00 00       	mov    $0x2,%edi
    1b02:	e8 89 f7 ff ff       	call   1290 <signal@plt>
    1b07:	48 8d 3d 84 18 00 00 	lea    0x1884(%rip),%rdi        # 3392 <array.0+0x192>
    1b0e:	e8 cd f6 ff ff       	call   11e0 <getenv@plt>
    1b13:	48 85 c0             	test   %rax,%rax
    1b16:	0f 95 c0             	setne  %al
    1b19:	0f b6 c0             	movzbl %al,%eax
    1b1c:	89 05 7e 49 00 00    	mov    %eax,0x497e(%rip)        # 64a0 <grade_bomb>
    1b22:	48 83 c4 08          	add    $0x8,%rsp
    1b26:	c3                   	ret    

0000000000001b27 <initialize_bomb_solve>:
    1b27:	f3 0f 1e fa          	endbr64 
    1b2b:	c3                   	ret    

0000000000001b2c <blank_line>:
    1b2c:	f3 0f 1e fa          	endbr64 
    1b30:	55                   	push   %rbp
    1b31:	53                   	push   %rbx
    1b32:	48 83 ec 08          	sub    $0x8,%rsp
    1b36:	48 89 fd             	mov    %rdi,%rbp
    1b39:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b3d:	84 db                	test   %bl,%bl
    1b3f:	74 1e                	je     1b5f <blank_line+0x33>
    1b41:	e8 0a f8 ff ff       	call   1350 <__ctype_b_loc@plt>
    1b46:	48 83 c5 01          	add    $0x1,%rbp
    1b4a:	48 0f be db          	movsbq %bl,%rbx
    1b4e:	48 8b 00             	mov    (%rax),%rax
    1b51:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b56:	75 e1                	jne    1b39 <blank_line+0xd>
    1b58:	b8 00 00 00 00       	mov    $0x0,%eax
    1b5d:	eb 05                	jmp    1b64 <blank_line+0x38>
    1b5f:	b8 01 00 00 00       	mov    $0x1,%eax
    1b64:	48 83 c4 08          	add    $0x8,%rsp
    1b68:	5b                   	pop    %rbx
    1b69:	5d                   	pop    %rbp
    1b6a:	c3                   	ret    

0000000000001b6b <skip>:
    1b6b:	f3 0f 1e fa          	endbr64 
    1b6f:	55                   	push   %rbp
    1b70:	53                   	push   %rbx
    1b71:	48 83 ec 08          	sub    $0x8,%rsp
    1b75:	48 8d 2d c4 3f 00 00 	lea    0x3fc4(%rip),%rbp        # 5b40 <input_strings>
    1b7c:	48 63 15 b5 3f 00 00 	movslq 0x3fb5(%rip),%rdx        # 5b38 <num_input_strings>
    1b83:	48 89 d0             	mov    %rdx,%rax
    1b86:	48 c1 e0 04          	shl    $0x4,%rax
    1b8a:	48 29 d0             	sub    %rdx,%rax
    1b8d:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1b92:	48 8b 15 17 3f 00 00 	mov    0x3f17(%rip),%rdx        # 5ab0 <infile>
    1b99:	be 78 00 00 00       	mov    $0x78,%esi
    1b9e:	e8 cd f6 ff ff       	call   1270 <fgets@plt>
    1ba3:	48 89 c3             	mov    %rax,%rbx
    1ba6:	48 85 c0             	test   %rax,%rax
    1ba9:	74 0c                	je     1bb7 <skip+0x4c>
    1bab:	48 89 c7             	mov    %rax,%rdi
    1bae:	e8 79 ff ff ff       	call   1b2c <blank_line>
    1bb3:	85 c0                	test   %eax,%eax
    1bb5:	75 c5                	jne    1b7c <skip+0x11>
    1bb7:	48 89 d8             	mov    %rbx,%rax
    1bba:	48 83 c4 08          	add    $0x8,%rsp
    1bbe:	5b                   	pop    %rbx
    1bbf:	5d                   	pop    %rbp
    1bc0:	c3                   	ret    

0000000000001bc1 <send_msg>:
    1bc1:	f3 0f 1e fa          	endbr64 
    1bc5:	53                   	push   %rbx
    1bc6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1bcd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bd2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1bd9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bde:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1be5:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bea:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1bf1:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bf6:	8b 0d 3c 3f 00 00    	mov    0x3f3c(%rip),%ecx        # 5b38 <num_input_strings>
    1bfc:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1bff:	48 98                	cltq   
    1c01:	48 89 c2             	mov    %rax,%rdx
    1c04:	48 c1 e2 04          	shl    $0x4,%rdx
    1c08:	48 29 c2             	sub    %rax,%rdx
    1c0b:	48 8d 05 2e 3f 00 00 	lea    0x3f2e(%rip),%rax        # 5b40 <input_strings>
    1c12:	48 8d 04 d0          	lea    (%rax,%rdx,8),%rax
    1c16:	85 ff                	test   %edi,%edi
    1c18:	4c 8d 0d 7e 17 00 00 	lea    0x177e(%rip),%r9        # 339d <array.0+0x19d>
    1c1f:	48 8d 15 7f 17 00 00 	lea    0x177f(%rip),%rdx        # 33a5 <array.0+0x1a5>
    1c26:	4c 0f 44 ca          	cmove  %rdx,%r9
    1c2a:	48 8d 9c 24 00 20 00 	lea    0x2000(%rsp),%rbx
    1c31:	00 
    1c32:	50                   	push   %rax
    1c33:	51                   	push   %rcx
    1c34:	44 8b 05 05 39 00 00 	mov    0x3905(%rip),%r8d        # 5540 <bomb_id>
    1c3b:	48 8d 0d 6c 17 00 00 	lea    0x176c(%rip),%rcx        # 33ae <array.0+0x1ae>
    1c42:	ba 00 20 00 00       	mov    $0x2000,%edx
    1c47:	be 01 00 00 00       	mov    $0x1,%esi
    1c4c:	48 89 df             	mov    %rbx,%rdi
    1c4f:	b8 00 00 00 00       	mov    $0x0,%eax
    1c54:	e8 07 f7 ff ff       	call   1360 <__sprintf_chk@plt>
    1c59:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1c5e:	ba 00 00 00 00       	mov    $0x0,%edx
    1c63:	48 89 de             	mov    %rbx,%rsi
    1c66:	48 8d 3d d3 34 00 00 	lea    0x34d3(%rip),%rdi        # 5140 <userid>
    1c6d:	e8 77 0d 00 00       	call   29e9 <driver_post>
    1c72:	48 83 c4 10          	add    $0x10,%rsp
    1c76:	85 c0                	test   %eax,%eax
    1c78:	78 09                	js     1c83 <send_msg+0xc2>
    1c7a:	48 81 c4 00 40 00 00 	add    $0x4000,%rsp
    1c81:	5b                   	pop    %rbx
    1c82:	c3                   	ret    
    1c83:	48 89 e7             	mov    %rsp,%rdi
    1c86:	e8 85 f5 ff ff       	call   1210 <puts@plt>
    1c8b:	bf 00 00 00 00       	mov    $0x0,%edi
    1c90:	e8 7b f6 ff ff       	call   1310 <exit@plt>

0000000000001c95 <explode_bomb>:
    1c95:	f3 0f 1e fa          	endbr64 
    1c99:	50                   	push   %rax
    1c9a:	58                   	pop    %rax
    1c9b:	48 83 ec 08          	sub    $0x8,%rsp
    1c9f:	48 8d 3d 14 17 00 00 	lea    0x1714(%rip),%rdi        # 33ba <array.0+0x1ba>
    1ca6:	e8 65 f5 ff ff       	call   1210 <puts@plt>
    1cab:	48 8d 3d 11 17 00 00 	lea    0x1711(%rip),%rdi        # 33c3 <array.0+0x1c3>
    1cb2:	e8 59 f5 ff ff       	call   1210 <puts@plt>
    1cb7:	83 3d e2 47 00 00 00 	cmpl   $0x0,0x47e2(%rip)        # 64a0 <grade_bomb>
    1cbe:	74 0a                	je     1cca <explode_bomb+0x35>
    1cc0:	bf 08 00 00 00       	mov    $0x8,%edi
    1cc5:	e8 46 f6 ff ff       	call   1310 <exit@plt>
    1cca:	bf 00 00 00 00       	mov    $0x0,%edi
    1ccf:	e8 ed fe ff ff       	call   1bc1 <send_msg>
    1cd4:	48 8d 3d 9d 15 00 00 	lea    0x159d(%rip),%rdi        # 3278 <array.0+0x78>
    1cdb:	e8 30 f5 ff ff       	call   1210 <puts@plt>
    1ce0:	eb de                	jmp    1cc0 <explode_bomb+0x2b>

0000000000001ce2 <read_six_numbers>:
    1ce2:	f3 0f 1e fa          	endbr64 
    1ce6:	48 83 ec 08          	sub    $0x8,%rsp
    1cea:	48 89 f2             	mov    %rsi,%rdx
    1ced:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1cf1:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1cf5:	50                   	push   %rax
    1cf6:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1cfa:	50                   	push   %rax
    1cfb:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1cff:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1d03:	48 8d 35 d0 16 00 00 	lea    0x16d0(%rip),%rsi        # 33da <array.0+0x1da>
    1d0a:	b8 00 00 00 00       	mov    $0x0,%eax
    1d0f:	e8 cc f5 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1d14:	48 83 c4 10          	add    $0x10,%rsp
    1d18:	83 f8 05             	cmp    $0x5,%eax
    1d1b:	7e 05                	jle    1d22 <read_six_numbers+0x40>
    1d1d:	48 83 c4 08          	add    $0x8,%rsp
    1d21:	c3                   	ret    
    1d22:	e8 6e ff ff ff       	call   1c95 <explode_bomb>

0000000000001d27 <read_line>:
    1d27:	f3 0f 1e fa          	endbr64 
    1d2b:	55                   	push   %rbp
    1d2c:	53                   	push   %rbx
    1d2d:	48 83 ec 08          	sub    $0x8,%rsp
    1d31:	b8 00 00 00 00       	mov    $0x0,%eax
    1d36:	e8 30 fe ff ff       	call   1b6b <skip>
    1d3b:	48 85 c0             	test   %rax,%rax
    1d3e:	74 63                	je     1da3 <read_line+0x7c>
    1d40:	8b 1d f2 3d 00 00    	mov    0x3df2(%rip),%ebx        # 5b38 <num_input_strings>
    1d46:	48 63 d3             	movslq %ebx,%rdx
    1d49:	48 89 d0             	mov    %rdx,%rax
    1d4c:	48 c1 e0 04          	shl    $0x4,%rax
    1d50:	48 29 d0             	sub    %rdx,%rax
    1d53:	48 8d 15 e6 3d 00 00 	lea    0x3de6(%rip),%rdx        # 5b40 <input_strings>
    1d5a:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    1d5e:	48 89 ef             	mov    %rbp,%rdi
    1d61:	e8 ca f4 ff ff       	call   1230 <strlen@plt>
    1d66:	83 f8 76             	cmp    $0x76,%eax
    1d69:	0f 8f 9d 00 00 00    	jg     1e0c <read_line+0xe5>
    1d6f:	83 e8 01             	sub    $0x1,%eax
    1d72:	48 98                	cltq   
    1d74:	48 63 cb             	movslq %ebx,%rcx
    1d77:	48 89 ca             	mov    %rcx,%rdx
    1d7a:	48 c1 e2 04          	shl    $0x4,%rdx
    1d7e:	48 29 ca             	sub    %rcx,%rdx
    1d81:	48 8d 0d b8 3d 00 00 	lea    0x3db8(%rip),%rcx        # 5b40 <input_strings>
    1d88:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    1d8c:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d90:	83 c3 01             	add    $0x1,%ebx
    1d93:	89 1d 9f 3d 00 00    	mov    %ebx,0x3d9f(%rip)        # 5b38 <num_input_strings>
    1d99:	48 89 e8             	mov    %rbp,%rax
    1d9c:	48 83 c4 08          	add    $0x8,%rsp
    1da0:	5b                   	pop    %rbx
    1da1:	5d                   	pop    %rbp
    1da2:	c3                   	ret    
    1da3:	48 8b 05 e6 3c 00 00 	mov    0x3ce6(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1daa:	48 39 05 ff 3c 00 00 	cmp    %rax,0x3cff(%rip)        # 5ab0 <infile>
    1db1:	74 13                	je     1dc6 <read_line+0x9f>
    1db3:	83 3d e6 46 00 00 00 	cmpl   $0x0,0x46e6(%rip)        # 64a0 <grade_bomb>
    1dba:	74 20                	je     1ddc <read_line+0xb5>
    1dbc:	bf 00 00 00 00       	mov    $0x0,%edi
    1dc1:	e8 4a f5 ff ff       	call   1310 <exit@plt>
    1dc6:	48 8d 3d 1f 16 00 00 	lea    0x161f(%rip),%rdi        # 33ec <array.0+0x1ec>
    1dcd:	e8 3e f4 ff ff       	call   1210 <puts@plt>
    1dd2:	bf 08 00 00 00       	mov    $0x8,%edi
    1dd7:	e8 34 f5 ff ff       	call   1310 <exit@plt>
    1ddc:	48 89 05 cd 3c 00 00 	mov    %rax,0x3ccd(%rip)        # 5ab0 <infile>
    1de3:	b8 00 00 00 00       	mov    $0x0,%eax
    1de8:	e8 7e fd ff ff       	call   1b6b <skip>
    1ded:	48 85 c0             	test   %rax,%rax
    1df0:	0f 85 4a ff ff ff    	jne    1d40 <read_line+0x19>
    1df6:	48 8d 3d ef 15 00 00 	lea    0x15ef(%rip),%rdi        # 33ec <array.0+0x1ec>
    1dfd:	e8 0e f4 ff ff       	call   1210 <puts@plt>
    1e02:	bf 00 00 00 00       	mov    $0x0,%edi
    1e07:	e8 04 f5 ff ff       	call   1310 <exit@plt>
    1e0c:	48 8d 3d f7 15 00 00 	lea    0x15f7(%rip),%rdi        # 340a <array.0+0x20a>
    1e13:	e8 f8 f3 ff ff       	call   1210 <puts@plt>
    1e18:	8b 05 1a 3d 00 00    	mov    0x3d1a(%rip),%eax        # 5b38 <num_input_strings>
    1e1e:	8d 50 01             	lea    0x1(%rax),%edx
    1e21:	89 15 11 3d 00 00    	mov    %edx,0x3d11(%rip)        # 5b38 <num_input_strings>
    1e27:	48 98                	cltq   
    1e29:	48 6b c0 78          	imul   $0x78,%rax,%rax
    1e2d:	48 8d 15 0c 3d 00 00 	lea    0x3d0c(%rip),%rdx        # 5b40 <input_strings>
    1e34:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e3b:	75 6e 63 
    1e3e:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e45:	2a 2a 00 
    1e48:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e4c:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e51:	e8 3f fe ff ff       	call   1c95 <explode_bomb>

0000000000001e56 <phase_defused>:
    1e56:	f3 0f 1e fa          	endbr64 
    1e5a:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1e61:	83 3d 38 46 00 00 00 	cmpl   $0x0,0x4638(%rip)        # 64a0 <grade_bomb>
    1e68:	74 11                	je     1e7b <phase_defused+0x25>
    1e6a:	83 3d c7 3c 00 00 06 	cmpl   $0x6,0x3cc7(%rip)        # 5b38 <num_input_strings>
    1e71:	74 14                	je     1e87 <phase_defused+0x31>
    1e73:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1e7a:	c3                   	ret    
    1e7b:	bf 01 00 00 00       	mov    $0x1,%edi
    1e80:	e8 3c fd ff ff       	call   1bc1 <send_msg>
    1e85:	eb e3                	jmp    1e6a <phase_defused+0x14>
    1e87:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1e8c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1e91:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e96:	48 8d 35 88 15 00 00 	lea    0x1588(%rip),%rsi        # 3425 <array.0+0x225>
    1e9d:	48 8d 3d 04 3e 00 00 	lea    0x3e04(%rip),%rdi        # 5ca8 <input_strings+0x168>
    1ea4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea9:	e8 32 f4 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1eae:	83 f8 03             	cmp    $0x3,%eax
    1eb1:	74 23                	je     1ed6 <phase_defused+0x80>
    1eb3:	48 8d 3d 46 14 00 00 	lea    0x1446(%rip),%rdi        # 3300 <array.0+0x100>
    1eba:	e8 51 f3 ff ff       	call   1210 <puts@plt>
    1ebf:	83 3d da 45 00 00 00 	cmpl   $0x0,0x45da(%rip)        # 64a0 <grade_bomb>
    1ec6:	75 ab                	jne    1e73 <phase_defused+0x1d>
    1ec8:	48 8d 3d 61 14 00 00 	lea    0x1461(%rip),%rdi        # 3330 <array.0+0x130>
    1ecf:	e8 3c f3 ff ff       	call   1210 <puts@plt>
    1ed4:	eb 9d                	jmp    1e73 <phase_defused+0x1d>
    1ed6:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1edb:	48 8d 35 4c 15 00 00 	lea    0x154c(%rip),%rsi        # 342e <array.0+0x22e>
    1ee2:	e8 95 fb ff ff       	call   1a7c <strings_not_equal>
    1ee7:	85 c0                	test   %eax,%eax
    1ee9:	75 c8                	jne    1eb3 <phase_defused+0x5d>
    1eeb:	48 8d 3d ae 13 00 00 	lea    0x13ae(%rip),%rdi        # 32a0 <array.0+0xa0>
    1ef2:	e8 19 f3 ff ff       	call   1210 <puts@plt>
    1ef7:	48 8d 3d ca 13 00 00 	lea    0x13ca(%rip),%rdi        # 32c8 <array.0+0xc8>
    1efe:	e8 0d f3 ff ff       	call   1210 <puts@plt>
    1f03:	b8 00 00 00 00       	mov    $0x0,%eax
    1f08:	e8 64 fa ff ff       	call   1971 <secret_phase>
    1f0d:	eb a4                	jmp    1eb3 <phase_defused+0x5d>

0000000000001f0f <sigalrm_handler>:
    1f0f:	f3 0f 1e fa          	endbr64 
    1f13:	50                   	push   %rax
    1f14:	58                   	pop    %rax
    1f15:	48 83 ec 08          	sub    $0x8,%rsp
    1f19:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f1e:	48 8d 15 63 15 00 00 	lea    0x1563(%rip),%rdx        # 3488 <array.0+0x288>
    1f25:	be 01 00 00 00       	mov    $0x1,%esi
    1f2a:	48 8b 3d 6f 3b 00 00 	mov    0x3b6f(%rip),%rdi        # 5aa0 <stderr@GLIBC_2.2.5>
    1f31:	b8 00 00 00 00       	mov    $0x0,%eax
    1f36:	e8 f5 f3 ff ff       	call   1330 <__fprintf_chk@plt>
    1f3b:	bf 01 00 00 00       	mov    $0x1,%edi
    1f40:	e8 cb f3 ff ff       	call   1310 <exit@plt>

0000000000001f45 <rio_readlineb>:
    1f45:	41 56                	push   %r14
    1f47:	41 55                	push   %r13
    1f49:	41 54                	push   %r12
    1f4b:	55                   	push   %rbp
    1f4c:	53                   	push   %rbx
    1f4d:	49 89 f4             	mov    %rsi,%r12
    1f50:	48 83 fa 01          	cmp    $0x1,%rdx
    1f54:	0f 86 92 00 00 00    	jbe    1fec <rio_readlineb+0xa7>
    1f5a:	48 89 fb             	mov    %rdi,%rbx
    1f5d:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1f62:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f68:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1f6c:	eb 56                	jmp    1fc4 <rio_readlineb+0x7f>
    1f6e:	e8 7d f2 ff ff       	call   11f0 <__errno_location@plt>
    1f73:	83 38 04             	cmpl   $0x4,(%rax)
    1f76:	75 55                	jne    1fcd <rio_readlineb+0x88>
    1f78:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f7d:	48 89 ee             	mov    %rbp,%rsi
    1f80:	8b 3b                	mov    (%rbx),%edi
    1f82:	e8 d9 f2 ff ff       	call   1260 <read@plt>
    1f87:	89 c2                	mov    %eax,%edx
    1f89:	89 43 04             	mov    %eax,0x4(%rbx)
    1f8c:	85 c0                	test   %eax,%eax
    1f8e:	78 de                	js     1f6e <rio_readlineb+0x29>
    1f90:	85 c0                	test   %eax,%eax
    1f92:	74 42                	je     1fd6 <rio_readlineb+0x91>
    1f94:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f98:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1f9c:	0f b6 08             	movzbl (%rax),%ecx
    1f9f:	48 83 c0 01          	add    $0x1,%rax
    1fa3:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1fa7:	83 ea 01             	sub    $0x1,%edx
    1faa:	89 53 04             	mov    %edx,0x4(%rbx)
    1fad:	49 83 c4 01          	add    $0x1,%r12
    1fb1:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1fb6:	80 f9 0a             	cmp    $0xa,%cl
    1fb9:	74 3c                	je     1ff7 <rio_readlineb+0xb2>
    1fbb:	41 83 c5 01          	add    $0x1,%r13d
    1fbf:	4d 39 f4             	cmp    %r14,%r12
    1fc2:	74 30                	je     1ff4 <rio_readlineb+0xaf>
    1fc4:	8b 53 04             	mov    0x4(%rbx),%edx
    1fc7:	85 d2                	test   %edx,%edx
    1fc9:	7e ad                	jle    1f78 <rio_readlineb+0x33>
    1fcb:	eb cb                	jmp    1f98 <rio_readlineb+0x53>
    1fcd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fd4:	eb 05                	jmp    1fdb <rio_readlineb+0x96>
    1fd6:	b8 00 00 00 00       	mov    $0x0,%eax
    1fdb:	85 c0                	test   %eax,%eax
    1fdd:	75 29                	jne    2008 <rio_readlineb+0xc3>
    1fdf:	b8 00 00 00 00       	mov    $0x0,%eax
    1fe4:	41 83 fd 01          	cmp    $0x1,%r13d
    1fe8:	75 0d                	jne    1ff7 <rio_readlineb+0xb2>
    1fea:	eb 13                	jmp    1fff <rio_readlineb+0xba>
    1fec:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1ff2:	eb 03                	jmp    1ff7 <rio_readlineb+0xb2>
    1ff4:	4d 89 f4             	mov    %r14,%r12
    1ff7:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1ffc:	49 63 c5             	movslq %r13d,%rax
    1fff:	5b                   	pop    %rbx
    2000:	5d                   	pop    %rbp
    2001:	41 5c                	pop    %r12
    2003:	41 5d                	pop    %r13
    2005:	41 5e                	pop    %r14
    2007:	c3                   	ret    
    2008:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    200f:	eb ee                	jmp    1fff <rio_readlineb+0xba>

0000000000002011 <submitr>:
    2011:	f3 0f 1e fa          	endbr64 
    2015:	41 57                	push   %r15
    2017:	41 56                	push   %r14
    2019:	41 55                	push   %r13
    201b:	41 54                	push   %r12
    201d:	55                   	push   %rbp
    201e:	53                   	push   %rbx
    201f:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    2026:	ff 
    2027:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    202e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2033:	4c 39 dc             	cmp    %r11,%rsp
    2036:	75 ef                	jne    2027 <submitr+0x16>
    2038:	48 83 ec 68          	sub    $0x68,%rsp
    203c:	49 89 fd             	mov    %rdi,%r13
    203f:	89 f5                	mov    %esi,%ebp
    2041:	48 89 14 24          	mov    %rdx,(%rsp)
    2045:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    204a:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    204f:	4c 89 cb             	mov    %r9,%rbx
    2052:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
    2059:	00 
    205a:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    2061:	00 00 00 00 
    2065:	ba 00 00 00 00       	mov    $0x0,%edx
    206a:	be 01 00 00 00       	mov    $0x1,%esi
    206f:	bf 02 00 00 00       	mov    $0x2,%edi
    2074:	e8 f7 f2 ff ff       	call   1370 <socket@plt>
    2079:	85 c0                	test   %eax,%eax
    207b:	0f 88 20 01 00 00    	js     21a1 <submitr+0x190>
    2081:	41 89 c4             	mov    %eax,%r12d
    2084:	4c 89 ef             	mov    %r13,%rdi
    2087:	e8 14 f2 ff ff       	call   12a0 <gethostbyname@plt>
    208c:	48 85 c0             	test   %rax,%rax
    208f:	0f 84 5c 01 00 00    	je     21f1 <submitr+0x1e0>
    2095:	4c 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%r13
    209c:	00 
    209d:	48 c7 84 24 50 a0 00 	movq   $0x0,0xa050(%rsp)
    20a4:	00 00 00 00 00 
    20a9:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    20b0:	00 00 00 00 00 
    20b5:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    20bc:	00 02 00 
    20bf:	48 63 50 14          	movslq 0x14(%rax),%rdx
    20c3:	48 8b 40 18          	mov    0x18(%rax),%rax
    20c7:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    20ce:	00 
    20cf:	b9 0c 00 00 00       	mov    $0xc,%ecx
    20d4:	48 8b 30             	mov    (%rax),%rsi
    20d7:	e8 d4 f1 ff ff       	call   12b0 <__memmove_chk@plt>
    20dc:	66 c1 c5 08          	rol    $0x8,%bp
    20e0:	66 89 ac 24 52 a0 00 	mov    %bp,0xa052(%rsp)
    20e7:	00 
    20e8:	ba 10 00 00 00       	mov    $0x10,%edx
    20ed:	4c 89 ee             	mov    %r13,%rsi
    20f0:	44 89 e7             	mov    %r12d,%edi
    20f3:	e8 28 f2 ff ff       	call   1320 <connect@plt>
    20f8:	85 c0                	test   %eax,%eax
    20fa:	0f 88 5c 01 00 00    	js     225c <submitr+0x24b>
    2100:	48 89 df             	mov    %rbx,%rdi
    2103:	e8 28 f1 ff ff       	call   1230 <strlen@plt>
    2108:	48 89 c5             	mov    %rax,%rbp
    210b:	48 8b 3c 24          	mov    (%rsp),%rdi
    210f:	e8 1c f1 ff ff       	call   1230 <strlen@plt>
    2114:	49 89 c6             	mov    %rax,%r14
    2117:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    211c:	e8 0f f1 ff ff       	call   1230 <strlen@plt>
    2121:	49 89 c5             	mov    %rax,%r13
    2124:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2129:	e8 02 f1 ff ff       	call   1230 <strlen@plt>
    212e:	48 89 c2             	mov    %rax,%rdx
    2131:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    2138:	00 
    2139:	48 01 d0             	add    %rdx,%rax
    213c:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    2141:	48 01 d0             	add    %rdx,%rax
    2144:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    214a:	0f 87 69 01 00 00    	ja     22b9 <submitr+0x2a8>
    2150:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    2157:	00 
    2158:	b9 00 04 00 00       	mov    $0x400,%ecx
    215d:	b8 00 00 00 00       	mov    $0x0,%eax
    2162:	48 89 d7             	mov    %rdx,%rdi
    2165:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2168:	48 89 df             	mov    %rbx,%rdi
    216b:	e8 c0 f0 ff ff       	call   1230 <strlen@plt>
    2170:	85 c0                	test   %eax,%eax
    2172:	0f 84 e1 04 00 00    	je     2659 <submitr+0x648>
    2178:	8d 40 ff             	lea    -0x1(%rax),%eax
    217b:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2180:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    2187:	00 
    2188:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    218d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2192:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    2199:	00 20 00 
    219c:	e9 a6 01 00 00       	jmp    2347 <submitr+0x336>
    21a1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21a8:	3a 20 43 
    21ab:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    21b2:	20 75 6e 
    21b5:	49 89 07             	mov    %rax,(%r15)
    21b8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21bc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21c3:	74 6f 20 
    21c6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    21cd:	65 20 73 
    21d0:	49 89 47 10          	mov    %rax,0x10(%r15)
    21d4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21d8:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    21df:	65 
    21e0:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    21e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21ec:	e9 f7 02 00 00       	jmp    24e8 <submitr+0x4d7>
    21f1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    21f8:	3a 20 44 
    21fb:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2202:	20 75 6e 
    2205:	49 89 07             	mov    %rax,(%r15)
    2208:	49 89 57 08          	mov    %rdx,0x8(%r15)
    220c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2213:	74 6f 20 
    2216:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    221d:	76 65 20 
    2220:	49 89 47 10          	mov    %rax,0x10(%r15)
    2224:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2228:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    222f:	72 20 61 
    2232:	49 89 47 20          	mov    %rax,0x20(%r15)
    2236:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    223d:	65 
    223e:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2245:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    224a:	44 89 e7             	mov    %r12d,%edi
    224d:	e8 fe ef ff ff       	call   1250 <close@plt>
    2252:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2257:	e9 8c 02 00 00       	jmp    24e8 <submitr+0x4d7>
    225c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2263:	3a 20 55 
    2266:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    226d:	20 74 6f 
    2270:	49 89 07             	mov    %rax,(%r15)
    2273:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2277:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    227e:	65 63 74 
    2281:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2288:	68 65 20 
    228b:	49 89 47 10          	mov    %rax,0x10(%r15)
    228f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2293:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    229a:	76 
    229b:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    22a2:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    22a7:	44 89 e7             	mov    %r12d,%edi
    22aa:	e8 a1 ef ff ff       	call   1250 <close@plt>
    22af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22b4:	e9 2f 02 00 00       	jmp    24e8 <submitr+0x4d7>
    22b9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    22c0:	3a 20 52 
    22c3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    22ca:	20 73 74 
    22cd:	49 89 07             	mov    %rax,(%r15)
    22d0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22d4:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    22db:	74 6f 6f 
    22de:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    22e5:	65 2e 20 
    22e8:	49 89 47 10          	mov    %rax,0x10(%r15)
    22ec:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22f0:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    22f7:	61 73 65 
    22fa:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2301:	49 54 52 
    2304:	49 89 47 20          	mov    %rax,0x20(%r15)
    2308:	49 89 57 28          	mov    %rdx,0x28(%r15)
    230c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2313:	55 46 00 
    2316:	49 89 47 30          	mov    %rax,0x30(%r15)
    231a:	44 89 e7             	mov    %r12d,%edi
    231d:	e8 2e ef ff ff       	call   1250 <close@plt>
    2322:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2327:	e9 bc 01 00 00       	jmp    24e8 <submitr+0x4d7>
    232c:	49 0f a3 c6          	bt     %rax,%r14
    2330:	73 21                	jae    2353 <submitr+0x342>
    2332:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2336:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    233a:	48 83 c3 01          	add    $0x1,%rbx
    233e:	4c 39 eb             	cmp    %r13,%rbx
    2341:	0f 84 12 03 00 00    	je     2659 <submitr+0x648>
    2347:	44 0f b6 03          	movzbl (%rbx),%r8d
    234b:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    234f:	3c 35                	cmp    $0x35,%al
    2351:	76 d9                	jbe    232c <submitr+0x31b>
    2353:	44 89 c0             	mov    %r8d,%eax
    2356:	83 e0 df             	and    $0xffffffdf,%eax
    2359:	83 e8 41             	sub    $0x41,%eax
    235c:	3c 19                	cmp    $0x19,%al
    235e:	76 d2                	jbe    2332 <submitr+0x321>
    2360:	41 80 f8 20          	cmp    $0x20,%r8b
    2364:	74 54                	je     23ba <submitr+0x3a9>
    2366:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    236a:	3c 5f                	cmp    $0x5f,%al
    236c:	76 0a                	jbe    2378 <submitr+0x367>
    236e:	41 80 f8 09          	cmp    $0x9,%r8b
    2372:	0f 85 54 02 00 00    	jne    25cc <submitr+0x5bb>
    2378:	45 0f b6 c0          	movzbl %r8b,%r8d
    237c:	48 8d 0d d3 11 00 00 	lea    0x11d3(%rip),%rcx        # 3556 <array.0+0x356>
    2383:	ba 08 00 00 00       	mov    $0x8,%edx
    2388:	be 01 00 00 00       	mov    $0x1,%esi
    238d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2392:	b8 00 00 00 00       	mov    $0x0,%eax
    2397:	e8 c4 ef ff ff       	call   1360 <__sprintf_chk@plt>
    239c:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    23a1:	88 45 00             	mov    %al,0x0(%rbp)
    23a4:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    23a9:	88 45 01             	mov    %al,0x1(%rbp)
    23ac:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    23b1:	88 45 02             	mov    %al,0x2(%rbp)
    23b4:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    23b8:	eb 80                	jmp    233a <submitr+0x329>
    23ba:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    23be:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    23c2:	e9 73 ff ff ff       	jmp    233a <submitr+0x329>
    23c7:	48 01 c5             	add    %rax,%rbp
    23ca:	48 29 c3             	sub    %rax,%rbx
    23cd:	0f 84 e9 02 00 00    	je     26bc <submitr+0x6ab>
    23d3:	48 89 da             	mov    %rbx,%rdx
    23d6:	48 89 ee             	mov    %rbp,%rsi
    23d9:	44 89 e7             	mov    %r12d,%edi
    23dc:	e8 3f ee ff ff       	call   1220 <write@plt>
    23e1:	48 85 c0             	test   %rax,%rax
    23e4:	7f e1                	jg     23c7 <submitr+0x3b6>
    23e6:	e8 05 ee ff ff       	call   11f0 <__errno_location@plt>
    23eb:	83 38 04             	cmpl   $0x4,(%rax)
    23ee:	0f 85 79 01 00 00    	jne    256d <submitr+0x55c>
    23f4:	4c 89 e8             	mov    %r13,%rax
    23f7:	eb ce                	jmp    23c7 <submitr+0x3b6>
    23f9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2400:	3a 20 43 
    2403:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    240a:	20 75 6e 
    240d:	49 89 07             	mov    %rax,(%r15)
    2410:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2414:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    241b:	74 6f 20 
    241e:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2425:	66 69 72 
    2428:	49 89 47 10          	mov    %rax,0x10(%r15)
    242c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2430:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2437:	61 64 65 
    243a:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2441:	6d 20 73 
    2444:	49 89 47 20          	mov    %rax,0x20(%r15)
    2448:	49 89 57 28          	mov    %rdx,0x28(%r15)
    244c:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2453:	65 
    2454:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    245b:	44 89 e7             	mov    %r12d,%edi
    245e:	e8 ed ed ff ff       	call   1250 <close@plt>
    2463:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2468:	eb 7e                	jmp    24e8 <submitr+0x4d7>
    246a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
    246f:	48 8d 0d 3a 10 00 00 	lea    0x103a(%rip),%rcx        # 34b0 <array.0+0x2b0>
    2476:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    247d:	be 01 00 00 00       	mov    $0x1,%esi
    2482:	4c 89 ff             	mov    %r15,%rdi
    2485:	b8 00 00 00 00       	mov    $0x0,%eax
    248a:	e8 d1 ee ff ff       	call   1360 <__sprintf_chk@plt>
    248f:	44 89 e7             	mov    %r12d,%edi
    2492:	e8 b9 ed ff ff       	call   1250 <close@plt>
    2497:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    249c:	eb 4a                	jmp    24e8 <submitr+0x4d7>
    249e:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    24a5:	00 
    24a6:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    24ad:	00 
    24ae:	ba 00 20 00 00       	mov    $0x2000,%edx
    24b3:	e8 8d fa ff ff       	call   1f45 <rio_readlineb>
    24b8:	48 85 c0             	test   %rax,%rax
    24bb:	7e 3d                	jle    24fa <submitr+0x4e9>
    24bd:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    24c4:	00 
    24c5:	4c 89 ff             	mov    %r15,%rdi
    24c8:	e8 33 ed ff ff       	call   1200 <strcpy@plt>
    24cd:	44 89 e7             	mov    %r12d,%edi
    24d0:	e8 7b ed ff ff       	call   1250 <close@plt>
    24d5:	48 8d 35 95 10 00 00 	lea    0x1095(%rip),%rsi        # 3571 <array.0+0x371>
    24dc:	4c 89 ff             	mov    %r15,%rdi
    24df:	e8 9c ed ff ff       	call   1280 <strcmp@plt>
    24e4:	f7 d8                	neg    %eax
    24e6:	19 c0                	sbb    %eax,%eax
    24e8:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    24ef:	5b                   	pop    %rbx
    24f0:	5d                   	pop    %rbp
    24f1:	41 5c                	pop    %r12
    24f3:	41 5d                	pop    %r13
    24f5:	41 5e                	pop    %r14
    24f7:	41 5f                	pop    %r15
    24f9:	c3                   	ret    
    24fa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2501:	3a 20 43 
    2504:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    250b:	20 75 6e 
    250e:	49 89 07             	mov    %rax,(%r15)
    2511:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2515:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    251c:	74 6f 20 
    251f:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2526:	73 74 61 
    2529:	49 89 47 10          	mov    %rax,0x10(%r15)
    252d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2531:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2538:	65 73 73 
    253b:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2542:	72 6f 6d 
    2545:	49 89 47 20          	mov    %rax,0x20(%r15)
    2549:	49 89 57 28          	mov    %rdx,0x28(%r15)
    254d:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2554:	65 72 00 
    2557:	49 89 47 30          	mov    %rax,0x30(%r15)
    255b:	44 89 e7             	mov    %r12d,%edi
    255e:	e8 ed ec ff ff       	call   1250 <close@plt>
    2563:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2568:	e9 7b ff ff ff       	jmp    24e8 <submitr+0x4d7>
    256d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2574:	3a 20 43 
    2577:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    257e:	20 75 6e 
    2581:	49 89 07             	mov    %rax,(%r15)
    2584:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2588:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    258f:	74 6f 20 
    2592:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2599:	20 74 6f 
    259c:	49 89 47 10          	mov    %rax,0x10(%r15)
    25a0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25a4:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    25ab:	73 65 72 
    25ae:	49 89 47 20          	mov    %rax,0x20(%r15)
    25b2:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    25b9:	00 
    25ba:	44 89 e7             	mov    %r12d,%edi
    25bd:	e8 8e ec ff ff       	call   1250 <close@plt>
    25c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25c7:	e9 1c ff ff ff       	jmp    24e8 <submitr+0x4d7>
    25cc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25d3:	3a 20 52 
    25d6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25dd:	20 73 74 
    25e0:	49 89 07             	mov    %rax,(%r15)
    25e3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25e7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    25ee:	63 6f 6e 
    25f1:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    25f8:	20 61 6e 
    25fb:	49 89 47 10          	mov    %rax,0x10(%r15)
    25ff:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2603:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    260a:	67 61 6c 
    260d:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2614:	6e 70 72 
    2617:	49 89 47 20          	mov    %rax,0x20(%r15)
    261b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    261f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2626:	6c 65 20 
    2629:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2630:	63 74 65 
    2633:	49 89 47 30          	mov    %rax,0x30(%r15)
    2637:	49 89 57 38          	mov    %rdx,0x38(%r15)
    263b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2642:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2647:	44 89 e7             	mov    %r12d,%edi
    264a:	e8 01 ec ff ff       	call   1250 <close@plt>
    264f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2654:	e9 8f fe ff ff       	jmp    24e8 <submitr+0x4d7>
    2659:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    2660:	00 
    2661:	48 8d 84 24 40 40 00 	lea    0x4040(%rsp),%rax
    2668:	00 
    2669:	50                   	push   %rax
    266a:	ff 74 24 18          	push   0x18(%rsp)
    266e:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    2673:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    2678:	48 8d 0d 61 0e 00 00 	lea    0xe61(%rip),%rcx        # 34e0 <array.0+0x2e0>
    267f:	ba 00 20 00 00       	mov    $0x2000,%edx
    2684:	be 01 00 00 00       	mov    $0x1,%esi
    2689:	48 89 df             	mov    %rbx,%rdi
    268c:	b8 00 00 00 00       	mov    $0x0,%eax
    2691:	e8 ca ec ff ff       	call   1360 <__sprintf_chk@plt>
    2696:	48 89 df             	mov    %rbx,%rdi
    2699:	e8 92 eb ff ff       	call   1230 <strlen@plt>
    269e:	48 89 c3             	mov    %rax,%rbx
    26a1:	48 83 c4 10          	add    $0x10,%rsp
    26a5:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    26ac:	00 
    26ad:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    26b3:	48 85 c0             	test   %rax,%rax
    26b6:	0f 85 17 fd ff ff    	jne    23d3 <submitr+0x3c2>
    26bc:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    26c3:	00 
    26c4:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    26cb:	00 00 00 00 
    26cf:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    26d6:	00 
    26d7:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    26de:	00 
    26df:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    26e6:	00 
    26e7:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    26ee:	00 
    26ef:	ba 00 20 00 00       	mov    $0x2000,%edx
    26f4:	e8 4c f8 ff ff       	call   1f45 <rio_readlineb>
    26f9:	48 85 c0             	test   %rax,%rax
    26fc:	0f 8e f7 fc ff ff    	jle    23f9 <submitr+0x3e8>
    2702:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    2709:	00 
    270a:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    2711:	00 
    2712:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2719:	00 
    271a:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    271f:	48 8d 35 37 0e 00 00 	lea    0xe37(%rip),%rsi        # 355d <array.0+0x35d>
    2726:	b8 00 00 00 00       	mov    $0x0,%eax
    272b:	e8 b0 eb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    2730:	44 8b 84 24 3c 20 00 	mov    0x203c(%rsp),%r8d
    2737:	00 
    2738:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    273f:	0f 85 25 fd ff ff    	jne    246a <submitr+0x459>
    2745:	48 8d 1d 22 0e 00 00 	lea    0xe22(%rip),%rbx        # 356e <array.0+0x36e>
    274c:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2753:	00 
    2754:	48 89 de             	mov    %rbx,%rsi
    2757:	e8 24 eb ff ff       	call   1280 <strcmp@plt>
    275c:	85 c0                	test   %eax,%eax
    275e:	0f 84 3a fd ff ff    	je     249e <submitr+0x48d>
    2764:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    276b:	00 
    276c:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2773:	00 
    2774:	ba 00 20 00 00       	mov    $0x2000,%edx
    2779:	e8 c7 f7 ff ff       	call   1f45 <rio_readlineb>
    277e:	48 85 c0             	test   %rax,%rax
    2781:	7f c9                	jg     274c <submitr+0x73b>
    2783:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    278a:	3a 20 43 
    278d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2794:	20 75 6e 
    2797:	49 89 07             	mov    %rax,(%r15)
    279a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    279e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27a5:	74 6f 20 
    27a8:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    27af:	68 65 61 
    27b2:	49 89 47 10          	mov    %rax,0x10(%r15)
    27b6:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27ba:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    27c1:	66 72 6f 
    27c4:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    27cb:	76 65 72 
    27ce:	49 89 47 20          	mov    %rax,0x20(%r15)
    27d2:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27d6:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    27db:	44 89 e7             	mov    %r12d,%edi
    27de:	e8 6d ea ff ff       	call   1250 <close@plt>
    27e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27e8:	e9 fb fc ff ff       	jmp    24e8 <submitr+0x4d7>

00000000000027ed <init_timeout>:
    27ed:	f3 0f 1e fa          	endbr64 
    27f1:	85 ff                	test   %edi,%edi
    27f3:	75 01                	jne    27f6 <init_timeout+0x9>
    27f5:	c3                   	ret    
    27f6:	53                   	push   %rbx
    27f7:	89 fb                	mov    %edi,%ebx
    27f9:	48 8d 35 0f f7 ff ff 	lea    -0x8f1(%rip),%rsi        # 1f0f <sigalrm_handler>
    2800:	bf 0e 00 00 00       	mov    $0xe,%edi
    2805:	e8 86 ea ff ff       	call   1290 <signal@plt>
    280a:	85 db                	test   %ebx,%ebx
    280c:	b8 00 00 00 00       	mov    $0x0,%eax
    2811:	0f 49 c3             	cmovns %ebx,%eax
    2814:	89 c7                	mov    %eax,%edi
    2816:	e8 25 ea ff ff       	call   1240 <alarm@plt>
    281b:	5b                   	pop    %rbx
    281c:	c3                   	ret    

000000000000281d <init_driver>:
    281d:	f3 0f 1e fa          	endbr64 
    2821:	41 54                	push   %r12
    2823:	55                   	push   %rbp
    2824:	53                   	push   %rbx
    2825:	48 83 ec 10          	sub    $0x10,%rsp
    2829:	48 89 fd             	mov    %rdi,%rbp
    282c:	be 01 00 00 00       	mov    $0x1,%esi
    2831:	bf 0d 00 00 00       	mov    $0xd,%edi
    2836:	e8 55 ea ff ff       	call   1290 <signal@plt>
    283b:	be 01 00 00 00       	mov    $0x1,%esi
    2840:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2845:	e8 46 ea ff ff       	call   1290 <signal@plt>
    284a:	be 01 00 00 00       	mov    $0x1,%esi
    284f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2854:	e8 37 ea ff ff       	call   1290 <signal@plt>
    2859:	ba 00 00 00 00       	mov    $0x0,%edx
    285e:	be 01 00 00 00       	mov    $0x1,%esi
    2863:	bf 02 00 00 00       	mov    $0x2,%edi
    2868:	e8 03 eb ff ff       	call   1370 <socket@plt>
    286d:	85 c0                	test   %eax,%eax
    286f:	0f 88 88 00 00 00    	js     28fd <init_driver+0xe0>
    2875:	89 c3                	mov    %eax,%ebx
    2877:	48 8d 3d f6 0c 00 00 	lea    0xcf6(%rip),%rdi        # 3574 <array.0+0x374>
    287e:	e8 1d ea ff ff       	call   12a0 <gethostbyname@plt>
    2883:	48 85 c0             	test   %rax,%rax
    2886:	0f 84 bd 00 00 00    	je     2949 <init_driver+0x12c>
    288c:	49 89 e4             	mov    %rsp,%r12
    288f:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2896:	00 
    2897:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    289e:	00 00 
    28a0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    28a6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    28aa:	48 8b 40 18          	mov    0x18(%rax),%rax
    28ae:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    28b3:	b9 0c 00 00 00       	mov    $0xc,%ecx
    28b8:	48 8b 30             	mov    (%rax),%rsi
    28bb:	e8 f0 e9 ff ff       	call   12b0 <__memmove_chk@plt>
    28c0:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    28c7:	ba 10 00 00 00       	mov    $0x10,%edx
    28cc:	4c 89 e6             	mov    %r12,%rsi
    28cf:	89 df                	mov    %ebx,%edi
    28d1:	e8 4a ea ff ff       	call   1320 <connect@plt>
    28d6:	85 c0                	test   %eax,%eax
    28d8:	0f 88 d3 00 00 00    	js     29b1 <init_driver+0x194>
    28de:	89 df                	mov    %ebx,%edi
    28e0:	e8 6b e9 ff ff       	call   1250 <close@plt>
    28e5:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    28eb:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    28ef:	b8 00 00 00 00       	mov    $0x0,%eax
    28f4:	48 83 c4 10          	add    $0x10,%rsp
    28f8:	5b                   	pop    %rbx
    28f9:	5d                   	pop    %rbp
    28fa:	41 5c                	pop    %r12
    28fc:	c3                   	ret    
    28fd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2904:	3a 20 43 
    2907:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    290e:	20 75 6e 
    2911:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2915:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2919:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2920:	74 6f 20 
    2923:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    292a:	65 20 73 
    292d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2931:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2935:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    293c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2942:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2947:	eb ab                	jmp    28f4 <init_driver+0xd7>
    2949:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2950:	3a 20 44 
    2953:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    295a:	20 75 6e 
    295d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2961:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2965:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    296c:	74 6f 20 
    296f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2976:	76 65 20 
    2979:	48 89 45 10          	mov    %rax,0x10(%rbp)
    297d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2981:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2988:	72 20 61 
    298b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    298f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2996:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    299c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    29a0:	89 df                	mov    %ebx,%edi
    29a2:	e8 a9 e8 ff ff       	call   1250 <close@plt>
    29a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29ac:	e9 43 ff ff ff       	jmp    28f4 <init_driver+0xd7>
    29b1:	4c 8d 05 bc 0b 00 00 	lea    0xbbc(%rip),%r8        # 3574 <array.0+0x374>
    29b8:	48 8d 0d 71 0b 00 00 	lea    0xb71(%rip),%rcx        # 3530 <array.0+0x330>
    29bf:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    29c6:	be 01 00 00 00       	mov    $0x1,%esi
    29cb:	48 89 ef             	mov    %rbp,%rdi
    29ce:	b8 00 00 00 00       	mov    $0x0,%eax
    29d3:	e8 88 e9 ff ff       	call   1360 <__sprintf_chk@plt>
    29d8:	89 df                	mov    %ebx,%edi
    29da:	e8 71 e8 ff ff       	call   1250 <close@plt>
    29df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29e4:	e9 0b ff ff ff       	jmp    28f4 <init_driver+0xd7>

00000000000029e9 <driver_post>:
    29e9:	f3 0f 1e fa          	endbr64 
    29ed:	53                   	push   %rbx
    29ee:	48 89 cb             	mov    %rcx,%rbx
    29f1:	85 d2                	test   %edx,%edx
    29f3:	75 17                	jne    2a0c <driver_post+0x23>
    29f5:	48 85 ff             	test   %rdi,%rdi
    29f8:	74 05                	je     29ff <driver_post+0x16>
    29fa:	80 3f 00             	cmpb   $0x0,(%rdi)
    29fd:	75 36                	jne    2a35 <driver_post+0x4c>
    29ff:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a04:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a08:	89 d0                	mov    %edx,%eax
    2a0a:	5b                   	pop    %rbx
    2a0b:	c3                   	ret    
    2a0c:	48 89 f2             	mov    %rsi,%rdx
    2a0f:	48 8d 35 75 0b 00 00 	lea    0xb75(%rip),%rsi        # 358b <array.0+0x38b>
    2a16:	bf 01 00 00 00       	mov    $0x1,%edi
    2a1b:	b8 00 00 00 00       	mov    $0x0,%eax
    2a20:	e8 cb e8 ff ff       	call   12f0 <__printf_chk@plt>
    2a25:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a2a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a2e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a33:	eb d5                	jmp    2a0a <driver_post+0x21>
    2a35:	48 83 ec 08          	sub    $0x8,%rsp
    2a39:	51                   	push   %rcx
    2a3a:	49 89 f1             	mov    %rsi,%r9
    2a3d:	4c 8d 05 5e 0b 00 00 	lea    0xb5e(%rip),%r8        # 35a2 <array.0+0x3a2>
    2a44:	48 89 f9             	mov    %rdi,%rcx
    2a47:	48 8d 15 61 0b 00 00 	lea    0xb61(%rip),%rdx        # 35af <array.0+0x3af>
    2a4e:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a53:	48 8d 3d 1a 0b 00 00 	lea    0xb1a(%rip),%rdi        # 3574 <array.0+0x374>
    2a5a:	e8 b2 f5 ff ff       	call   2011 <submitr>
    2a5f:	48 83 c4 10          	add    $0x10,%rsp
    2a63:	eb a5                	jmp    2a0a <driver_post+0x21>

Disassembly of section .fini:

0000000000002a68 <_fini>:
    2a68:	f3 0f 1e fa          	endbr64 
    2a6c:	48 83 ec 08          	sub    $0x8,%rsp
    2a70:	48 83 c4 08          	add    $0x8,%rsp
    2a74:	c3                   	ret    
