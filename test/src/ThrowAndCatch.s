	.file	"ThrowAndCatch.cpp"
	.intel_syntax noprefix
# GNU C++17 (Debian 13.3.0-3) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -fasynchronous-unwind-tables
	.text
	.globl	_ZSt9terminatev
	.type	_ZSt9terminatev, @function
_ZSt9terminatev:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# ThrowAndCatch.cpp:9:   }
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	_ZSt9terminatev, .-_ZSt9terminatev
	.globl	_Z5raisev
	.type	_Z5raisev, @function
_Z5raisev:
.LFB1:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# ThrowAndCatch.cpp:12: void raise() { throw Exception(); }
	mov	edi, 1	#,
	call	__cxa_allocate_exception@PLT	#
	mov	rcx, rax	# _3, tmp83
# ThrowAndCatch.cpp:12: void raise() { throw Exception(); }
	mov	edx, 0	#,
	lea	rax, _ZTI9Exception[rip]	# tmp84,
	mov	rsi, rax	#, tmp84
	mov	rdi, rcx	#, _3
	call	__cxa_throw@PLT	#
	.cfi_endproc
.LFE1:
	.size	_Z5raisev, .-_Z5raisev
	.section	.rodata
	.align 8
.LC0:
	.string	"try_but_dont_catch handled an Exception and resumed execution"
.LC1:
	.string	"Caught a Fake_Exception!"
	.text
	.globl	_Z18try_but_dont_catchv
	.type	_Z18try_but_dont_catchv, @function
_Z18try_but_dont_catchv:
.LFB2:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
.LEHB0:
# ThrowAndCatch.cpp:16:     raise();
	call	_Z5raisev	#
.LEHE0:
.L6:
# ThrowAndCatch.cpp:21:   printf("try_but_dont_catch handled an Exception and resumed execution\n");
	lea	rax, .LC0[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
.LEHB1:
	call	puts@PLT	#
# ThrowAndCatch.cpp:22: }
	jmp	.L10	#
.L8:
# ThrowAndCatch.cpp:17:   } catch (Fake_Exception &) {
	cmp	rdx, 1	# D.3432,
	je	.L5	#,
	mov	rdi, rax	#, D.3433
	call	_Unwind_Resume@PLT	#
.LEHE1:
.L5:
# ThrowAndCatch.cpp:17:   } catch (Fake_Exception &) {
	mov	rdi, rax	#, _1
	call	__cxa_begin_catch@PLT	#
# ThrowAndCatch.cpp:17:   } catch (Fake_Exception &) {
	mov	QWORD PTR -24[rbp], rax	# D.3402, _6
# ThrowAndCatch.cpp:18:     printf("Caught a Fake_Exception!\n");
	lea	rax, .LC1[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
.LEHB2:
	call	puts@PLT	#
.LEHE2:
# ThrowAndCatch.cpp:19:   }
	call	__cxa_end_catch@PLT	#
	jmp	.L6	#
.L9:
	mov	rbx, rax	# tmp91,
	call	__cxa_end_catch@PLT	#
	mov	rax, rbx	# D.3434, tmp91
	mov	rdi, rax	#, D.3434
.LEHB3:
	call	_Unwind_Resume@PLT	#
.LEHE3:
.L10:
# ThrowAndCatch.cpp:22: }
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA2:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2-.LLSDATTD2
.LLSDATTD2:
	.byte	0x1
	.uleb128 .LLSDACSE2-.LLSDACSB2
.LLSDACSB2:
	.uleb128 .LEHB0-.LFB2
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB2
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB2
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB2
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L9-.LFB2
	.uleb128 0
	.uleb128 .LEHB3-.LFB2
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI14Fake_Exception-.
.LLSDATT2:
	.text
	.size	_Z18try_but_dont_catchv, .-_Z18try_but_dont_catchv
	.section	.rodata
.LC2:
	.string	"catchit handled an exception!"
	.align 8
.LC3:
	.string	"caught an Exception! (Exception)"
	.text
	.globl	_Z7catchitv
	.type	_Z7catchitv, @function
_Z7catchitv:
.LFB3:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
.LEHB4:
# ThrowAndCatch.cpp:27:     try_but_dont_catch();
	call	_Z18try_but_dont_catchv	#
.LEHE4:
.L14:
# ThrowAndCatch.cpp:32:   printf("catchit handled an exception!\n");
	lea	rax, .LC2[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
.LEHB5:
	call	puts@PLT	#
# ThrowAndCatch.cpp:33: }
	jmp	.L18	#
.L16:
# ThrowAndCatch.cpp:28:   } catch (Exception &) {
	cmp	rdx, 1	# D.3438,
	je	.L13	#,
	mov	rdi, rax	#, D.3439
	call	_Unwind_Resume@PLT	#
.LEHE5:
.L13:
# ThrowAndCatch.cpp:28:   } catch (Exception &) {
	mov	rdi, rax	#, _1
	call	__cxa_begin_catch@PLT	#
# ThrowAndCatch.cpp:28:   } catch (Exception &) {
	mov	QWORD PTR -24[rbp], rax	# D.3409, _6
# ThrowAndCatch.cpp:29:     printf("caught an Exception! (Exception)\n");
	lea	rax, .LC3[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
.LEHB6:
	call	puts@PLT	#
.LEHE6:
# ThrowAndCatch.cpp:30:   }
	call	__cxa_end_catch@PLT	#
	jmp	.L14	#
.L17:
	mov	rbx, rax	# tmp91,
	call	__cxa_end_catch@PLT	#
	mov	rax, rbx	# D.3440, tmp91
	mov	rdi, rax	#, D.3440
.LEHB7:
	call	_Unwind_Resume@PLT	#
.LEHE7:
.L18:
# ThrowAndCatch.cpp:33: }
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.section	.gcc_except_table
	.align 4
.LLSDA3:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3-.LLSDATTD3
.LLSDATTD3:
	.byte	0x1
	.uleb128 .LLSDACSE3-.LLSDACSB3
.LLSDACSB3:
	.uleb128 .LEHB4-.LFB3
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L16-.LFB3
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB3
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L17-.LFB3
	.uleb128 0
	.uleb128 .LEHB7-.LFB3
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE3:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI9Exception-.
.LLSDATT3:
	.text
	.size	_Z7catchitv, .-_Z7catchitv
	.globl	ThrowAndCatch
	.type	ThrowAndCatch, @function
ThrowAndCatch:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# ThrowAndCatch.cpp:37: void ThrowAndCatch() { catchit(); }
	call	_Z7catchitv	#
# ThrowAndCatch.cpp:37: void ThrowAndCatch() { catchit(); }
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	ThrowAndCatch, .-ThrowAndCatch
	.weak	_ZTI14Fake_Exception
	.section	.data.rel.ro._ZTI14Fake_Exception,"awG",@progbits,_ZTI14Fake_Exception,comdat
	.align 8
	.type	_ZTI14Fake_Exception, @object
	.size	_ZTI14Fake_Exception, 16
_ZTI14Fake_Exception:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTS14Fake_Exception
	.weak	_ZTS14Fake_Exception
	.section	.rodata._ZTS14Fake_Exception,"aG",@progbits,_ZTS14Fake_Exception,comdat
	.align 16
	.type	_ZTS14Fake_Exception, @object
	.size	_ZTS14Fake_Exception, 17
_ZTS14Fake_Exception:
	.string	"14Fake_Exception"
	.weak	_ZTI9Exception
	.section	.data.rel.ro._ZTI9Exception,"awG",@progbits,_ZTI9Exception,comdat
	.align 8
	.type	_ZTI9Exception, @object
	.size	_ZTI9Exception, 16
_ZTI9Exception:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTS9Exception
	.weak	_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",@progbits,_ZTS9Exception,comdat
	.align 8
	.type	_ZTS9Exception, @object
	.size	_ZTS9Exception, 11
_ZTS9Exception:
	.string	"9Exception"
	.hidden	DW.ref._ZTI14Fake_Exception
	.weak	DW.ref._ZTI14Fake_Exception
	.section	.data.rel.local.DW.ref._ZTI14Fake_Exception,"awG",@progbits,DW.ref._ZTI14Fake_Exception,comdat
	.align 8
	.type	DW.ref._ZTI14Fake_Exception, @object
	.size	DW.ref._ZTI14Fake_Exception, 8
DW.ref._ZTI14Fake_Exception:
	.quad	_ZTI14Fake_Exception
	.hidden	DW.ref._ZTI9Exception
	.weak	DW.ref._ZTI9Exception
	.section	.data.rel.local.DW.ref._ZTI9Exception,"awG",@progbits,DW.ref._ZTI9Exception,comdat
	.align 8
	.type	DW.ref._ZTI9Exception, @object
	.size	DW.ref._ZTI9Exception, 8
DW.ref._ZTI9Exception:
	.quad	_ZTI9Exception
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Debian 13.3.0-3) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
