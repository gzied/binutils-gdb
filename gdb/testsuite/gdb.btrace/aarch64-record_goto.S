	.arch armv8-a
	.file	"record_goto.c"
	.text
.Ltext0:
	.align	2
	.global	fun1
	//.tune generic
	.type	fun1, %function
fun1:
.LFB0:
	.file 1 "record_goto.c"
	// record_goto.c:22:1
	.loc 1 22 1
	.cfi_startproc
// BLOCK 2 seq:0
// PRED: ENTRY (FALLTHRU)
	// record_goto.c:23:1
	.loc 1 23 1
	nop
// SUCC: EXIT [always] 
	ret
	.cfi_endproc
.LFE0:
	.size	fun1, .-fun1
	.align	2
	.global	fun2
	.type	fun2, %function
fun2:
.LFB1:
	// record_goto.c:27:1
	.loc 1 27 1
	.cfi_startproc
// BLOCK 2 seq:0
// PRED: ENTRY (FALLTHRU)
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	// record_goto.c:28:3
	.loc 1 28 3
	bl	fun1
	// record_goto.c:29:1
	.loc 1 29 1
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
// SUCC: EXIT [always] 
	ret
	.cfi_endproc
.LFE1:
	.size	fun2, .-fun2
	.align	2
	.global	fun3
	.type	fun3, %function
fun3:
.LFB2:
	// record_goto.c:33:1
	.loc 1 33 1
	.cfi_startproc
// BLOCK 2 seq:0
// PRED: ENTRY (FALLTHRU)
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	// record_goto.c:34:3
	.loc 1 34 3
	bl	fun1
	// record_goto.c:35:3
	.loc 1 35 3
	bl	fun2
	// record_goto.c:36:1
	.loc 1 36 1
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
// SUCC: EXIT [always] 
	ret
	.cfi_endproc
.LFE2:
	.size	fun3, .-fun3
	.align	2
	.global	fun4
	.type	fun4, %function
fun4:
.LFB3:
	// record_goto.c:40:1
	.loc 1 40 1
	.cfi_startproc
// BLOCK 2 seq:0
// PRED: ENTRY (FALLTHRU)
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	// record_goto.c:41:3
	.loc 1 41 3
	bl	fun1
	// record_goto.c:42:3
	.loc 1 42 3
	bl	fun2
	// record_goto.c:43:3
	.loc 1 43 3
	bl	fun3
	// record_goto.c:44:1
	.loc 1 44 1
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
// SUCC: EXIT [always] 
	ret
	.cfi_endproc
.LFE3:
	.size	fun4, .-fun4
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	// record_goto.c:48:1
	.loc 1 48 1
	.cfi_startproc
// BLOCK 2 seq:0
// PRED: ENTRY (FALLTHRU)
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	// record_goto.c:49:3
	.loc 1 49 3
	bl	fun4
	// record_goto.c:50:10
	.loc 1 50 10
	mov	w0, 0
	// record_goto.c:51:1
	.loc 1 51 1
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
// SUCC: EXIT [always] 
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb7	// Length of Compilation Unit Info
	.2byte	0x4	// DWARF version number
	.4byte	.Ldebug_abbrev0	// Offset Into Abbrev. Section
	.byte	0x8	// Pointer Size (in bytes)
	.uleb128 0x1	// (DIE (0xb) DW_TAG_compile_unit)
	.4byte	.LASF4	// DW_AT_producer: "GNU C17 10.2.1 20201224 -mlittle-endian -mabi=lp64 -g -fasynchronous-unwind-tables"
	.byte	0xc	// DW_AT_language
	.4byte	.LASF5	// DW_AT_name: "record_goto.c"
	.4byte	.LASF6	// DW_AT_comp_dir: "/home/linaro/development/gdb/binutils-gdb/gdb/testsuite/gdb.btrace"
	.8byte	.Ltext0	// DW_AT_low_pc
	.8byte	.Letext0-.Ltext0	// DW_AT_high_pc
	.4byte	.Ldebug_line0	// DW_AT_stmt_list
	.uleb128 0x2	// (DIE (0x2d) DW_TAG_subprogram)
			// DW_AT_external
	.4byte	.LASF7	// DW_AT_name: "main"
	.byte	0x1	// DW_AT_decl_file (record_goto.c)
	.byte	0x2f	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.4byte	0x4b	// DW_AT_type
	.8byte	.LFB4	// DW_AT_low_pc
	.8byte	.LFE4-.LFB4	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_tail_call_sites
	.uleb128 0x3	// (DIE (0x4b) DW_TAG_base_type)
	.byte	0x4	// DW_AT_byte_size
	.byte	0x5	// DW_AT_encoding
	.ascii "int\0"	// DW_AT_name
	.uleb128 0x4	// (DIE (0x52) DW_TAG_subprogram)
			// DW_AT_external
	.4byte	.LASF0	// DW_AT_name: "fun4"
	.byte	0x1	// DW_AT_decl_file (record_goto.c)
	.byte	0x27	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.8byte	.LFB3	// DW_AT_low_pc
	.8byte	.LFE3-.LFB3	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_tail_call_sites
	.uleb128 0x4	// (DIE (0x6c) DW_TAG_subprogram)
			// DW_AT_external
	.4byte	.LASF1	// DW_AT_name: "fun3"
	.byte	0x1	// DW_AT_decl_file (record_goto.c)
	.byte	0x20	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.8byte	.LFB2	// DW_AT_low_pc
	.8byte	.LFE2-.LFB2	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_tail_call_sites
	.uleb128 0x4	// (DIE (0x86) DW_TAG_subprogram)
			// DW_AT_external
	.4byte	.LASF2	// DW_AT_name: "fun2"
	.byte	0x1	// DW_AT_decl_file (record_goto.c)
	.byte	0x1a	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.8byte	.LFB1	// DW_AT_low_pc
	.8byte	.LFE1-.LFB1	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_tail_call_sites
	.uleb128 0x5	// (DIE (0xa0) DW_TAG_subprogram)
			// DW_AT_external
	.4byte	.LASF3	// DW_AT_name: "fun1"
	.byte	0x1	// DW_AT_decl_file (record_goto.c)
	.byte	0x15	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.8byte	.LFB0	// DW_AT_low_pc
	.8byte	.LFE0-.LFB0	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_call_sites
	.byte	0	// end of children of DIE 0xb
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1	// (abbrev code)
	.uleb128 0x11	// (TAG: DW_TAG_compile_unit)
	.byte	0x1	// DW_children_yes
	.uleb128 0x25	// (DW_AT_producer)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x13	// (DW_AT_language)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x1b	// (DW_AT_comp_dir)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x12	// (DW_AT_high_pc)
	.uleb128 0x7	// (DW_FORM_data8)
	.uleb128 0x10	// (DW_AT_stmt_list)
	.uleb128 0x17	// (DW_FORM_sec_offset)
	.byte	0
	.byte	0
	.uleb128 0x2	// (abbrev code)
	.uleb128 0x2e	// (TAG: DW_TAG_subprogram)
	.byte	0	// DW_children_no
	.uleb128 0x3f	// (DW_AT_external)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x3a	// (DW_AT_decl_file)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3b	// (DW_AT_decl_line)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x39	// (DW_AT_decl_column)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x27	// (DW_AT_prototyped)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x49	// (DW_AT_type)
	.uleb128 0x13	// (DW_FORM_ref4)
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x12	// (DW_AT_high_pc)
	.uleb128 0x7	// (DW_FORM_data8)
	.uleb128 0x40	// (DW_AT_frame_base)
	.uleb128 0x18	// (DW_FORM_exprloc)
	.uleb128 0x2116	// (DW_AT_GNU_all_tail_call_sites)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.uleb128 0x3	// (abbrev code)
	.uleb128 0x24	// (TAG: DW_TAG_base_type)
	.byte	0	// DW_children_no
	.uleb128 0xb	// (DW_AT_byte_size)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3e	// (DW_AT_encoding)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0x8	// (DW_FORM_string)
	.byte	0
	.byte	0
	.uleb128 0x4	// (abbrev code)
	.uleb128 0x2e	// (TAG: DW_TAG_subprogram)
	.byte	0	// DW_children_no
	.uleb128 0x3f	// (DW_AT_external)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x3a	// (DW_AT_decl_file)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3b	// (DW_AT_decl_line)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x39	// (DW_AT_decl_column)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x27	// (DW_AT_prototyped)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x12	// (DW_AT_high_pc)
	.uleb128 0x7	// (DW_FORM_data8)
	.uleb128 0x40	// (DW_AT_frame_base)
	.uleb128 0x18	// (DW_FORM_exprloc)
	.uleb128 0x2116	// (DW_AT_GNU_all_tail_call_sites)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.uleb128 0x5	// (abbrev code)
	.uleb128 0x2e	// (TAG: DW_TAG_subprogram)
	.byte	0	// DW_children_no
	.uleb128 0x3f	// (DW_AT_external)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x3a	// (DW_AT_decl_file)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3b	// (DW_AT_decl_line)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x39	// (DW_AT_decl_column)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x27	// (DW_AT_prototyped)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x12	// (DW_AT_high_pc)
	.uleb128 0x7	// (DW_FORM_data8)
	.uleb128 0x40	// (DW_AT_frame_base)
	.uleb128 0x18	// (DW_FORM_exprloc)
	.uleb128 0x2117	// (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c	// Length of Address Ranges Info
	.2byte	0x2	// DWARF aranges version
	.4byte	.Ldebug_info0	// Offset of Compilation Unit Info
	.byte	0x8	// Size of Address
	.byte	0	// Size of Segment Descriptor
	.2byte	0	// Pad to 16 byte boundary
	.2byte	0
	.8byte	.Ltext0	// Address
	.8byte	.Letext0-.Ltext0	// Length
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"record_goto.c"
.LASF4:
	.string	"GNU C17 10.2.1 20201224 -mlittle-endian -mabi=lp64 -g -fasynchronous-unwind-tables"
.LASF3:
	.string	"fun1"
.LASF2:
	.string	"fun2"
.LASF0:
	.string	"fun4"
.LASF6:
	.string	"/home/linaro/development/gdb/binutils-gdb/gdb/testsuite/gdb.btrace"
.LASF7:
	.string	"main"
.LASF1:
	.string	"fun3"
	.ident	"GCC: (Debian 10.2.1-3) 10.2.1 20201224"
	.section	.note.GNU-stack,"",@progbits
