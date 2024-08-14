
ThrowAndCatch.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_ZSt9terminatev>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	5d                   	pop    rbp
   5:	c3                   	ret
   6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   d:	00 00 00 

0000000000000010 <_Z5raisev>:
  10:	55                   	push   rbp
  11:	48 89 e5             	mov    rbp,rsp
  14:	bf 01 00 00 00       	mov    edi,0x1
  19:	e8 00 00 00 00       	call   1e <_Z5raisev+0xe>
  1e:	48 89 c7             	mov    rdi,rax
  21:	48 8d 35 00 00 00 00 	lea    rsi,[rip+0x0]        # 28 <_Z5raisev+0x18>
  28:	31 c0                	xor    eax,eax
  2a:	89 c2                	mov    edx,eax
  2c:	e8 00 00 00 00       	call   31 <_Z5raisev+0x21>
  31:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  38:	0f 1f 84 00 00 00 00 
  3f:	00 

0000000000000040 <_Z18try_but_dont_catchv>:
  40:	55                   	push   rbp
  41:	48 89 e5             	mov    rbp,rsp
  44:	48 83 ec 20          	sub    rsp,0x20
  48:	e8 00 00 00 00       	call   4d <_Z18try_but_dont_catchv+0xd>
  4d:	e9 00 00 00 00       	jmp    52 <_Z18try_but_dont_catchv+0x12>
  52:	e9 41 00 00 00       	jmp    98 <_Z18try_but_dont_catchv+0x58>
  57:	48 89 c1             	mov    rcx,rax
  5a:	89 d0                	mov    eax,edx
  5c:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
  60:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  63:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  66:	b9 01 00 00 00       	mov    ecx,0x1
  6b:	39 c8                	cmp    eax,ecx
  6d:	0f 85 54 00 00 00    	jne    c7 <_Z18try_but_dont_catchv+0x87>
  73:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  77:	e8 00 00 00 00       	call   7c <_Z18try_but_dont_catchv+0x3c>
  7c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  80:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 87 <_Z18try_but_dont_catchv+0x47>
  87:	31 c0                	xor    eax,eax
  89:	e8 00 00 00 00       	call   8e <_Z18try_but_dont_catchv+0x4e>
  8e:	e9 00 00 00 00       	jmp    93 <_Z18try_but_dont_catchv+0x53>
  93:	e8 00 00 00 00       	call   98 <_Z18try_but_dont_catchv+0x58>
  98:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 9f <_Z18try_but_dont_catchv+0x5f>
  9f:	b0 00                	mov    al,0x0
  a1:	e8 00 00 00 00       	call   a6 <_Z18try_but_dont_catchv+0x66>
  a6:	48 83 c4 20          	add    rsp,0x20
  aa:	5d                   	pop    rbp
  ab:	c3                   	ret
  ac:	48 89 c1             	mov    rcx,rax
  af:	89 d0                	mov    eax,edx
  b1:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
  b5:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  b8:	e8 00 00 00 00       	call   bd <_Z18try_but_dont_catchv+0x7d>
  bd:	e9 00 00 00 00       	jmp    c2 <_Z18try_but_dont_catchv+0x82>
  c2:	e9 00 00 00 00       	jmp    c7 <_Z18try_but_dont_catchv+0x87>
  c7:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  cb:	e8 00 00 00 00       	call   d0 <_Z18try_but_dont_catchv+0x90>
  d0:	48 89 c7             	mov    rdi,rax
  d3:	e8 00 00 00 00       	call   d8 <_Z18try_but_dont_catchv+0x98>
  d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  df:	00 

00000000000000e0 <_Z7catchitv>:
  e0:	55                   	push   rbp
  e1:	48 89 e5             	mov    rbp,rsp
  e4:	48 83 ec 20          	sub    rsp,0x20
  e8:	e8 00 00 00 00       	call   ed <_Z7catchitv+0xd>
  ed:	e9 00 00 00 00       	jmp    f2 <_Z7catchitv+0x12>
  f2:	e9 41 00 00 00       	jmp    138 <_Z7catchitv+0x58>
  f7:	48 89 c1             	mov    rcx,rax
  fa:	89 d0                	mov    eax,edx
  fc:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
 100:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
 103:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 106:	b9 01 00 00 00       	mov    ecx,0x1
 10b:	39 c8                	cmp    eax,ecx
 10d:	0f 85 54 00 00 00    	jne    167 <_Z7catchitv+0x87>
 113:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
 117:	e8 00 00 00 00       	call   11c <_Z7catchitv+0x3c>
 11c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
 120:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 127 <_Z7catchitv+0x47>
 127:	31 c0                	xor    eax,eax
 129:	e8 00 00 00 00       	call   12e <_Z7catchitv+0x4e>
 12e:	e9 00 00 00 00       	jmp    133 <_Z7catchitv+0x53>
 133:	e8 00 00 00 00       	call   138 <_Z7catchitv+0x58>
 138:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 13f <_Z7catchitv+0x5f>
 13f:	b0 00                	mov    al,0x0
 141:	e8 00 00 00 00       	call   146 <_Z7catchitv+0x66>
 146:	48 83 c4 20          	add    rsp,0x20
 14a:	5d                   	pop    rbp
 14b:	c3                   	ret
 14c:	48 89 c1             	mov    rcx,rax
 14f:	89 d0                	mov    eax,edx
 151:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
 155:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
 158:	e8 00 00 00 00       	call   15d <_Z7catchitv+0x7d>
 15d:	e9 00 00 00 00       	jmp    162 <_Z7catchitv+0x82>
 162:	e9 00 00 00 00       	jmp    167 <_Z7catchitv+0x87>
 167:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
 16b:	e8 00 00 00 00       	call   170 <_Z7catchitv+0x90>
 170:	48 89 c7             	mov    rdi,rax
 173:	e8 00 00 00 00       	call   178 <_Z7catchitv+0x98>
 178:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 17f:	00 

0000000000000180 <ThrowAndCatch>:
 180:	55                   	push   rbp
 181:	48 89 e5             	mov    rbp,rsp
 184:	e8 00 00 00 00       	call   189 <ThrowAndCatch+0x9>
 189:	5d                   	pop    rbp
 18a:	c3                   	ret

Disassembly of section .gcc_except_table:

0000000000000000 <GCC_except_table2>:
   0:	ff 9b 29 01 19 08    	call   FWORD PTR [rbx+0x8190129]
   6:	05 17 01 0d 33       	add    eax,0x330d0117
   b:	00 00                	add    BYTE PTR [rax],al
   d:	40 0e                	rex (bad)
   f:	6c                   	ins    BYTE PTR es:[rdi],dx
  10:	00 4e 2a             	add    BYTE PTR [rsi+0x2a],cl
  13:	00 00                	add    BYTE PTR [rax],al
  15:	78 05                	js     1c <GCC_except_table2+0x1c>
  17:	90                   	nop
  18:	01 03                	add    DWORD PTR [rbx],eax
  1a:	7d 1b                	jge    37 <GCC_except_table4+0xb>
  1c:	00 00                	add    BYTE PTR [rax],al
  1e:	01 00                	add    DWORD PTR [rax],eax
  20:	02 00                	add    al,BYTE PTR [rax]
	...

000000000000002c <GCC_except_table4>:
  2c:	ff 9b 29 01 19 08    	call   FWORD PTR [rbx+0x8190129]
  32:	05 17 01 0d 33       	add    eax,0x330d0117
  37:	00 00                	add    BYTE PTR [rax],al
  39:	40 0e                	rex (bad)
  3b:	6c                   	ins    BYTE PTR es:[rdi],dx
  3c:	00 4e 2a             	add    BYTE PTR [rsi+0x2a],cl
  3f:	00 00                	add    BYTE PTR [rax],al
  41:	78 05                	js     48 <GCC_except_table4+0x1c>
  43:	90                   	nop
  44:	01 03                	add    DWORD PTR [rbx],eax
  46:	7d 1b                	jge    63 <.L.str.2+0xa>
  48:	00 00                	add    BYTE PTR [rax],al
  4a:	01 00                	add    DWORD PTR [rax],eax
  4c:	02 00                	add    al,BYTE PTR [rax]
	...

Disassembly of section .group:

0000000000000000 <.group>:
   0:	01 00                	add    DWORD PTR [rax],eax
   2:	00 00                	add    BYTE PTR [rax],al
   4:	07                   	(bad)
   5:	00 00                	add    BYTE PTR [rax],al
   7:	00 08                	add    BYTE PTR [rax],cl
   9:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .text.__clang_call_terminate:

0000000000000000 <__clang_call_terminate>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	e8 00 00 00 00       	call   9 <__clang_call_terminate+0x9>
   9:	e8 00 00 00 00       	call   e <__clang_call_terminate+0xe>

Disassembly of section .group:

0000000000000000 <.group>:
   0:	01 00                	add    DWORD PTR [rax],eax
   2:	00 00                	add    BYTE PTR [rax],al
   4:	0a 00                	or     al,BYTE PTR [rax]
	...

Disassembly of section .rodata._ZTS9Exception:

0000000000000000 <_ZTS9Exception>:
   0:	39 45 78             	cmp    DWORD PTR [rbp+0x78],eax
   3:	63 65 70             	movsxd esp,DWORD PTR [rbp+0x70]
   6:	74 69                	je     71 <.L.str.2+0x18>
   8:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   9:	6e                   	outs   dx,BYTE PTR ds:[rsi]
	...

Disassembly of section .group:

0000000000000000 <.group>:
   0:	01 00                	add    DWORD PTR [rax],eax
   2:	00 00                	add    BYTE PTR [rax],al
   4:	0c 00                	or     al,0x0
   6:	00 00                	add    BYTE PTR [rax],al
   8:	0d                   	.byte 0xd
   9:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data.rel.ro._ZTI9Exception:

0000000000000000 <_ZTI9Exception>:
	...

Disassembly of section .group:

0000000000000000 <.group>:
   0:	01 00                	add    DWORD PTR [rax],eax
   2:	00 00                	add    BYTE PTR [rax],al
   4:	0f 00 00             	sldt   WORD PTR [rax]
	...

Disassembly of section .rodata._ZTS14Fake_Exception:

0000000000000000 <_ZTS14Fake_Exception>:
   0:	31 34 46             	xor    DWORD PTR [rsi+rax*2],esi
   3:	61                   	(bad)
   4:	6b 65 5f 45          	imul   esp,DWORD PTR [rbp+0x5f],0x45
   8:	78 63                	js     6d <.L.str.2+0x14>
   a:	65 70 74             	gs jo  81 <.L.str.3+0x6>
   d:	69                   	.byte 0x69
   e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
	...

Disassembly of section .group:

0000000000000000 <.group>:
   0:	01 00                	add    DWORD PTR [rax],eax
   2:	00 00                	add    BYTE PTR [rax],al
   4:	11 00                	adc    DWORD PTR [rax],eax
   6:	00 00                	add    BYTE PTR [rax],al
   8:	12 00                	adc    al,BYTE PTR [rax]
	...

Disassembly of section .data.rel.ro._ZTI14Fake_Exception:

0000000000000000 <_ZTI14Fake_Exception>:
	...

Disassembly of section .rodata.str1.1:

0000000000000000 <.L.str>:
   0:	43 61                	rex.XB (bad)
   2:	75 67                	jne    6b <.L.str.2+0x12>
   4:	68 74 20 61 20       	push   0x20612074
   9:	46 61                	rex.RX (bad)
   b:	6b 65 5f 45          	imul   esp,DWORD PTR [rbp+0x5f],0x45
   f:	78 63                	js     74 <.L.str.2+0x1b>
  11:	65 70 74             	gs jo  88 <.L.str.3+0xd>
  14:	69 6f 6e 21 0a 00  	imul   ebp,DWORD PTR [rdi+0x6e],0x74000a21

000000000000001a <.L.str.1>:
  1a:	74 72                	je     8e <.L.str.3+0x13>
  1c:	79 5f                	jns    7d <.L.str.3+0x2>
  1e:	62 75 74 5f 64       	(bad)
  23:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  24:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  25:	74 5f                	je     86 <.L.str.3+0xb>
  27:	63 61 74             	movsxd esp,DWORD PTR [rcx+0x74]
  2a:	63 68 20             	movsxd ebp,DWORD PTR [rax+0x20]
  2d:	68 61 6e 64 6c       	push   0x6c646e61
  32:	65 64 20 61 6e       	gs and BYTE PTR fs:[rcx+0x6e],ah
  37:	20 45 78             	and    BYTE PTR [rbp+0x78],al
  3a:	63 65 70             	movsxd esp,DWORD PTR [rbp+0x70]
  3d:	74 69                	je     a8 <.L.str.3+0x2d>
  3f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  40:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  41:	20 61 6e             	and    BYTE PTR [rcx+0x6e],ah
  44:	64 20 72 65          	and    BYTE PTR fs:[rdx+0x65],dh
  48:	73 75                	jae    bf <.L.str.3+0x44>
  4a:	6d                   	ins    DWORD PTR es:[rdi],dx
  4b:	65 64 20 65 78       	gs and BYTE PTR fs:[rbp+0x78],ah
  50:	65 63 75 74          	movsxd esi,DWORD PTR gs:[rbp+0x74]
  54:	69 6f 6e 0a 00   	imul   ebp,DWORD PTR [rdi+0x6e],0x6163000a

0000000000000059 <.L.str.2>:
  59:	63 61 75             	movsxd esp,DWORD PTR [rcx+0x75]
  5c:	67 68 74 20 61 6e    	addr32 push 0x6e612074
  62:	20 45 78             	and    BYTE PTR [rbp+0x78],al
  65:	63 65 70             	movsxd esp,DWORD PTR [rbp+0x70]
  68:	74 69                	je     d3 <.L.str.3+0x58>
  6a:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  6b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  6c:	21 20                	and    DWORD PTR [rax],esp
  6e:	28 45 78             	sub    BYTE PTR [rbp+0x78],al
  71:	63 65 70             	movsxd esp,DWORD PTR [rbp+0x70]
  74:	74 69                	je     df <.L.str.3+0x64>
  76:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  77:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  78:	29 0a                	sub    DWORD PTR [rdx],ecx
	...

000000000000007b <.L.str.3>:
  7b:	63 61 74             	movsxd esp,DWORD PTR [rcx+0x74]
  7e:	63 68 69             	movsxd ebp,DWORD PTR [rax+0x69]
  81:	74 20                	je     a3 <.L.str.3+0x28>
  83:	68 61 6e 64 6c       	push   0x6c646e61
  88:	65 64 20 61 6e       	gs and BYTE PTR fs:[rcx+0x6e],ah
  8d:	20 65 78             	and    BYTE PTR [rbp+0x78],ah
  90:	63 65 70             	movsxd esp,DWORD PTR [rbp+0x70]
  93:	74 69                	je     fe <_Z7catchitv+0x1e>
  95:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  96:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  97:	21 0a                	and    DWORD PTR [rdx],ecx
	...

Disassembly of section .data:

0000000000000000 <.data>:
	...

Disassembly of section .group:

0000000000000000 <.group>:
   0:	01 00                	add    DWORD PTR [rax],eax
   2:	00 00                	add    BYTE PTR [rax],al
   4:	17                   	(bad)
   5:	00 00                	add    BYTE PTR [rax],al
   7:	00 18                	add    BYTE PTR [rax],bl
   9:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data.DW.ref.__gxx_personality_v0:

0000000000000000 <DW.ref.__gxx_personality_v0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	00 44 65 62          	add    BYTE PTR [rbp+riz*2+0x62],al
   4:	69 61 6e 20 63 6c 61 	imul   esp,DWORD PTR [rcx+0x6e],0x616c6320
   b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   c:	67 20 76 65          	and    BYTE PTR [esi+0x65],dh
  10:	72 73                	jb     85 <.L.str.3+0xa>
  12:	69 6f 6e 20 31 37 2e 	imul   ebp,DWORD PTR [rdi+0x6e],0x2e373120
  19:	30 2e                	xor    BYTE PTR [rsi],ch
  1b:	36 20 28             	ss and BYTE PTR [rax],ch
  1e:	31 32                	xor    DWORD PTR [rdx],esi
  20:	2b 62 31             	sub    esp,DWORD PTR [rdx+0x31]
  23:	29 00                	sub    DWORD PTR [rax],eax

Disassembly of section .eh_frame:

0000000000000000 <.eh_frame>:
   0:	14 00                	adc    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	00 00                	add    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
   b:	00 01                	add    BYTE PTR [rcx],al
   d:	78 10                	js     1f <.eh_frame+0x1f>
   f:	01 1b                	add    DWORD PTR [rbx],ebx
  11:	0c 07                	or     al,0x7
  13:	08 90 01 00 00 1c    	or     BYTE PTR [rax+0x1c000001],dl
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  1e:	00 00                	add    BYTE PTR [rax],al
  20:	00 00                	add    BYTE PTR [rax],al
  22:	00 00                	add    BYTE PTR [rax],al
  24:	06                   	(bad)
  25:	00 00                	add    BYTE PTR [rax],al
  27:	00 00                	add    BYTE PTR [rax],al
  29:	41 0e                	rex.B (bad)
  2b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  31:	41 0c 07             	rex.B or al,0x7
  34:	08 00                	or     BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	18 00                	sbb    BYTE PTR [rax],al
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	3c 00                	cmp    al,0x0
  3e:	00 00                	add    BYTE PTR [rax],al
  40:	00 00                	add    BYTE PTR [rax],al
  42:	00 00                	add    BYTE PTR [rax],al
  44:	21 00                	and    DWORD PTR [rax],eax
  46:	00 00                	add    BYTE PTR [rax],al
  48:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  4b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  51:	00 00                	add    BYTE PTR [rax],al
  53:	00 18                	add    BYTE PTR [rax],bl
  55:	00 00                	add    BYTE PTR [rax],al
  57:	00 58 00             	add    BYTE PTR [rax+0x0],bl
  5a:	00 00                	add    BYTE PTR [rax],al
  5c:	00 00                	add    BYTE PTR [rax],al
  5e:	00 00                	add    BYTE PTR [rax],al
  60:	0e                   	(bad)
  61:	00 00                	add    BYTE PTR [rax],al
  63:	00 00                	add    BYTE PTR [rax],al
  65:	41 0e                	rex.B (bad)
  67:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  6d:	00 00                	add    BYTE PTR [rax],al
  6f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  72:	00 00                	add    BYTE PTR [rax],al
  74:	74 00                	je     76 <.eh_frame+0x76>
  76:	00 00                	add    BYTE PTR [rax],al
  78:	00 00                	add    BYTE PTR [rax],al
  7a:	00 00                	add    BYTE PTR [rax],al
  7c:	0b 00                	or     eax,DWORD PTR [rax]
  7e:	00 00                	add    BYTE PTR [rax],al
  80:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  83:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  89:	46 0c 07             	rex.RX or al,0x7
  8c:	08 00                	or     BYTE PTR [rax],al
  8e:	00 00                	add    BYTE PTR [rax],al
  90:	1c 00                	sbb    al,0x0
  92:	00 00                	add    BYTE PTR [rax],al
  94:	00 00                	add    BYTE PTR [rax],al
  96:	00 00                	add    BYTE PTR [rax],al
  98:	01 7a 50             	add    DWORD PTR [rdx+0x50],edi
  9b:	4c 52                	rex.WR push rdx
  9d:	00 01                	add    BYTE PTR [rcx],al
  9f:	78 10                	js     b1 <.eh_frame+0xb1>
  a1:	07                   	(bad)
  a2:	9b                   	fwait
  a3:	00 00                	add    BYTE PTR [rax],al
  a5:	00 00                	add    BYTE PTR [rax],al
  a7:	1b 1b                	sbb    ebx,DWORD PTR [rbx]
  a9:	0c 07                	or     al,0x7
  ab:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
  b1:	00 00                	add    BYTE PTR [rax],al
  b3:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  b6:	00 00                	add    BYTE PTR [rax],al
  b8:	00 00                	add    BYTE PTR [rax],al
  ba:	00 00                	add    BYTE PTR [rax],al
  bc:	98                   	cwde
  bd:	00 00                	add    BYTE PTR [rax],al
  bf:	00 04 00             	add    BYTE PTR [rax+rax*1],al
  c2:	00 00                	add    BYTE PTR [rax],al
  c4:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  c7:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  cd:	02 67 0c             	add    ah,BYTE PTR [rdi+0xc]
  d0:	07                   	(bad)
  d1:	08 41 0c             	or     BYTE PTR [rcx+0xc],al
  d4:	06                   	(bad)
  d5:	10 00                	adc    BYTE PTR [rax],al
  d7:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  da:	00 00                	add    BYTE PTR [rax],al
  dc:	4c 00 00             	rex.WR add BYTE PTR [rax],r8b
  df:	00 00                	add    BYTE PTR [rax],al
  e1:	00 00                	add    BYTE PTR [rax],al
  e3:	00 98 00 00 00 04    	add    BYTE PTR [rax+0x4000000],bl
  e9:	00 00                	add    BYTE PTR [rax],al
  eb:	00 00                	add    BYTE PTR [rax],al
  ed:	41 0e                	rex.B (bad)
  ef:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  f5:	02 67 0c             	add    ah,BYTE PTR [rdi+0xc]
  f8:	07                   	(bad)
  f9:	08 41 0c             	or     BYTE PTR [rcx+0xc],al
  fc:	06                   	(bad)
  fd:	10 00                	adc    BYTE PTR [rax],al
	...

Disassembly of section .llvm_addrsig:

0000000000000000 <.llvm_addrsig>:
   0:	0c 0d                	or     al,0xd
   2:	0e                   	(bad)
   3:	10 11                	adc    BYTE PTR [rcx],dl
   5:	1e                   	(bad)
   6:	12 13                	adc    dl,BYTE PTR [rbx]
   8:	14 16                	adc    al,0x16
   a:	17                   	(bad)
   b:	15 1a 19 0f 1b       	adc    eax,0x1b0f191a
  10:	1c                   	.byte 0x1c
