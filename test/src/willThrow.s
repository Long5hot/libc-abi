.file "willThrow.cpp".text.globl willThrow.type willThrow,
    @function willThrow :.LFB0 :.cfi_startproc pushq %
        rbp.cfi_def_cfa_offset 16 .cfi_offset 6,
    -16 movq % rsp, % rbp.cfi_def_cfa_register 6 movl $1,
    % edi call __cxa_allocate_exception @PLT movq % rax, % rcx movl $0,
    % edx leaq _ZTI9Exception(% rip), % rax movq % rax, % rsi movq % rcx,
    % rdi call __cxa_throw @PLT.cfi_endproc.LFE0 :.size willThrow,
    .- willThrow.weak _ZTI9Exception.section.data.rel.ro._ZTI9Exception, "awG",
    @progbits, _ZTI9Exception, comdat.align 8 .type _ZTI9Exception,
    @object.size _ZTI9Exception,
    16 _ZTI9Exception :.quad _ZTVN10__cxxabiv117__class_type_infoE +
        16 .quad _ZTS9Exception.weak
        _ZTS9Exception.section.rodata._ZTS9Exception,
    "aG", @progbits, _ZTS9Exception, comdat.align 8 .type _ZTS9Exception,
    @object.size _ZTS9Exception,
    11 _ZTS9Exception :.string
                       "9Exception".ident
                       "GCC: (Debian 13.2.0-25) 13.2.0".section.note.GNU
        - stack,
    "", @progbits
