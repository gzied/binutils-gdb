/* This testcase is part of GDB, the GNU debugger.

   Copyright 2013-2021 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.


   This file has been generated on an armv8 machine using:
   gcc -S -O2 -dA -g tailcall.c -o aarch64-tailcall.S  */

	.arch armv8-a
	.file	"tailcall.c"
	.text
.Ltext0:
	.align	2
	.p2align 4,,11
	//.tune generic
	.type	bar, %function
bar:
.LFB0:
	.file 1 "tailcall.c"
	// tailcall.c:22:1
	.loc 1 22 1 view -0
	.cfi_startproc
// BLOCK 2, count:1073741824 (estimated locally) seq:0
// PRED: ENTRY [always]  count:1073741824 (estimated locally) (FALLTHRU)
	// tailcall.c:23:3
	.loc 1 23 3 view .LVU1
	// tailcall.c:24:1
	.loc 1 24 1 is_stmt 0 view .LVU2
	mov	w0, 42
// SUCC: EXIT [always]  count:1073741824 (estimated locally)
	ret
	.cfi_endproc
.LFE0:
	.size	bar, .-bar
	.align	2
	.p2align 4,,11
	.type	foo, %function
foo:
.LFB1:
	// tailcall.c:28:1
	.loc 1 28 1 is_stmt 1 view -0
	.cfi_startproc
// BLOCK 2, count:1073741824 (estimated locally) seq:0
// PRED: ENTRY [always]  count:1073741824 (estimated locally) (FALLTHRU)
	// tailcall.c:29:3
	.loc 1 29 3 view .LVU4
// SUCC: EXIT [always]  count:1073741824 (estimated locally) (ABNORMAL,SIBCALL)
	// tailcall.c:29:10
	.loc 1 29 10 is_stmt 0 view .LVU5
	b	bar
.LVL0:
	.cfi_endproc
.LFE1:
	.size	foo, .-foo
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB2:
	// tailcall.c:34:1
	.loc 1 34 1 is_stmt 1 view -0
	.cfi_startproc
// BLOCK 2, count:1073741824 (estimated locally) seq:0
// PRED: ENTRY [always]  count:1073741824 (estimated locally) (FALLTHRU)
	// tailcall.c:35:3
	.loc 1 35 3 view .LVU7
	// tailcall.c:37:3
	.loc 1 37 3 view .LVU8
	// tailcall.c:34:1
	.loc 1 34 1 is_stmt 0 view .LVU9
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	// tailcall.c:37:12
	.loc 1 37 12 view .LVU10
	bl	foo
.LVL1:
	// DEBUG answer => x0
	// tailcall.c:38:3
	.loc 1 38 3 is_stmt 1 view .LVU11
	// DEBUG answer => x0+0x1
	// tailcall.c:40:3
	.loc 1 40 3 view .LVU12
	// tailcall.c:41:1
	.loc 1 41 1 is_stmt 0 view .LVU13
	add	w0, w0, 1
.LVL2:
	// DEBUG answer => x0
	// tailcall.c:41:1
	.loc 1 41 1 view .LVU14
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
// SUCC: EXIT [always]  count:1073741824 (estimated locally)
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbf	// Length of Compilation Unit Info
	.2byte	0x4	// DWARF version number
	.4byte	.Ldebug_abbrev0	// Offset Into Abbrev. Section
	.byte	0x8	// Pointer Size (in bytes)
	.uleb128 0x1	// (DIE (0xb) DW_TAG_compile_unit)
	.4byte	.LASF0	// DW_AT_producer: "GNU C17 10.2.1 20201224 -mlittle-endian -mabi=lp64 -g -O2 -fasynchronous-unwind-tables"
	.byte	0xc	// DW_AT_language
	.4byte	.LASF1	// DW_AT_name: "tailcall.c"
	.4byte	.LASF2	// DW_AT_comp_dir: "/home/linaro/development/gdb/binutils-gdb/gdb/testsuite/gdb.btrace"
	.4byte	.Ldebug_ranges0+0	// DW_AT_ranges
	.8byte	0	// DW_AT_low_pc
	.4byte	.Ldebug_line0	// DW_AT_stmt_list
	.uleb128 0x2	// (DIE (0x29) DW_TAG_subprogram)
			// DW_AT_external
	.4byte	.LASF3	// DW_AT_name: "main"
	.byte	0x1	// DW_AT_decl_file (tailcall.c)
	.byte	0x21	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.4byte	0x6d	// DW_AT_type
	.8byte	.LFB2	// DW_AT_low_pc
	.8byte	.LFE2-.LFB2	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_call_sites
	.4byte	0x6d	// DW_AT_sibling
	.uleb128 0x3	// (DIE (0x4b) DW_TAG_variable)
	.4byte	.LASF4	// DW_AT_name: "answer"
	.byte	0x1	// DW_AT_decl_file (tailcall.c)
	.byte	0x23	// DW_AT_decl_line
	.byte	0x7	// DW_AT_decl_column
	.4byte	0x6d	// DW_AT_type
	.4byte	.LLST0	// DW_AT_location
	.4byte	.LVUS0	// DW_AT_GNU_locviews
	.uleb128 0x4	// (DIE (0x5f) DW_TAG_GNU_call_site)
	.8byte	.LVL1	// DW_AT_low_pc
	.4byte	0x74	// DW_AT_abstract_origin
	.byte	0	// end of children of DIE 0x29
	.uleb128 0x5	// (DIE (0x6d) DW_TAG_base_type)
	.byte	0x4	// DW_AT_byte_size
	.byte	0x5	// DW_AT_encoding
	.ascii "int\0"	// DW_AT_name
	.uleb128 0x6	// (DIE (0x74) DW_TAG_subprogram)
	.ascii "foo\0"	// DW_AT_name
	.byte	0x1	// DW_AT_decl_file (tailcall.c)
	.byte	0x1b	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.4byte	0x6d	// DW_AT_type
	.8byte	.LFB1	// DW_AT_low_pc
	.8byte	.LFE1-.LFB1	// DW_AT_high_pc
	.uleb128 0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_GNU_all_call_sites
	.4byte	0xa4	// DW_AT_sibling
	.uleb128 0x7	// (DIE (0x96) DW_TAG_GNU_call_site)
	.8byte	.LVL0	// DW_AT_low_pc
			// DW_AT_GNU_tail_call
	.4byte	0xa4	// DW_AT_abstract_origin
	.byte	0	// end of children of DIE 0x74
	.uleb128 0x8	// (DIE (0xa4) DW_TAG_subprogram)
	.ascii "bar\0"	// DW_AT_name
	.byte	0x1	// DW_AT_decl_file (tailcall.c)
	.byte	0x15	// DW_AT_decl_line
	.byte	0x1	// DW_AT_decl_column
			// DW_AT_prototyped
	.4byte	0x6d	// DW_AT_type
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
	.uleb128 0x55	// (DW_AT_ranges)
	.uleb128 0x17	// (DW_FORM_sec_offset)
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x10	// (DW_AT_stmt_list)
	.uleb128 0x17	// (DW_FORM_sec_offset)
	.byte	0
	.byte	0
	.uleb128 0x2	// (abbrev code)
	.uleb128 0x2e	// (TAG: DW_TAG_subprogram)
	.byte	0x1	// DW_children_yes
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
	.uleb128 0x2117	// (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x1	// (DW_AT_sibling)
	.uleb128 0x13	// (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x3	// (abbrev code)
	.uleb128 0x34	// (TAG: DW_TAG_variable)
	.byte	0	// DW_children_no
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0xe	// (DW_FORM_strp)
	.uleb128 0x3a	// (DW_AT_decl_file)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x3b	// (DW_AT_decl_line)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x39	// (DW_AT_decl_column)
	.uleb128 0xb	// (DW_FORM_data1)
	.uleb128 0x49	// (DW_AT_type)
	.uleb128 0x13	// (DW_FORM_ref4)
	.uleb128 0x2	// (DW_AT_location)
	.uleb128 0x17	// (DW_FORM_sec_offset)
	.uleb128 0x2137	// (DW_AT_GNU_locviews)
	.uleb128 0x17	// (DW_FORM_sec_offset)
	.byte	0
	.byte	0
	.uleb128 0x4	// (abbrev code)
	.uleb128 0x4109	// (TAG: DW_TAG_GNU_call_site)
	.byte	0	// DW_children_no
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x31	// (DW_AT_abstract_origin)
	.uleb128 0x13	// (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x5	// (abbrev code)
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
	.uleb128 0x6	// (abbrev code)
	.uleb128 0x2e	// (TAG: DW_TAG_subprogram)
	.byte	0x1	// DW_children_yes
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0x8	// (DW_FORM_string)
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
	.uleb128 0x2117	// (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x1	// (DW_AT_sibling)
	.uleb128 0x13	// (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x7	// (abbrev code)
	.uleb128 0x4109	// (TAG: DW_TAG_GNU_call_site)
	.byte	0	// DW_children_no
	.uleb128 0x11	// (DW_AT_low_pc)
	.uleb128 0x1	// (DW_FORM_addr)
	.uleb128 0x2115	// (DW_AT_GNU_tail_call)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.uleb128 0x31	// (DW_AT_abstract_origin)
	.uleb128 0x13	// (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x8	// (abbrev code)
	.uleb128 0x2e	// (TAG: DW_TAG_subprogram)
	.byte	0	// DW_children_no
	.uleb128 0x3	// (DW_AT_name)
	.uleb128 0x8	// (DW_FORM_string)
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
	.uleb128 0x2117	// (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	// (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU11	// View list begin (*.LVUS0)
	.uleb128 .LVU12	// View list end (*.LVUS0)
	.uleb128 .LVU12	// View list begin (*.LVUS0)
	.uleb128 .LVU14	// View list end (*.LVUS0)
	.uleb128 .LVU14	// View list begin (*.LVUS0)
	.uleb128 0	// View list end (*.LVUS0)
.LLST0:
	.8byte	.LVL1	// Location list begin address (*.LLST0)
	.8byte	.LVL1	// Location list end address (*.LLST0)
	.2byte	0x1	// Location expression size
	.byte	0x50	// DW_OP_reg0
	.8byte	.LVL1	// Location list begin address (*.LLST0)
	.8byte	.LVL2	// Location list end address (*.LLST0)
	.2byte	0x3	// Location expression size
	.byte	0x70	// DW_OP_breg0
	.sleb128 1
	.byte	0x9f	// DW_OP_stack_value
	.8byte	.LVL2	// Location list begin address (*.LLST0)
	.8byte	.LFE2	// Location list end address (*.LLST0)
	.2byte	0x1	// Location expression size
	.byte	0x50	// DW_OP_reg0
	.8byte	0	// Location list terminator begin (*.LLST0)
	.8byte	0	// Location list terminator end (*.LLST0)
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c	// Length of Address Ranges Info
	.2byte	0x2	// DWARF aranges version
	.4byte	.Ldebug_info0	// Offset of Compilation Unit Info
	.byte	0x8	// Size of Address
	.byte	0	// Size of Segment Descriptor
	.2byte	0	// Pad to 16 byte boundary
	.2byte	0
	.8byte	.Ltext0	// Address
	.8byte	.Letext0-.Ltext0	// Length
	.8byte	.LFB2	// Address
	.8byte	.LFE2-.LFB2	// Length
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.Ltext0	// Offset 0
	.8byte	.Letext0
	.8byte	.LFB2	// Offset 0x10
	.8byte	.LFE2
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"GNU C17 10.2.1 20201224 -mlittle-endian -mabi=lp64 -g -O2 -fasynchronous-unwind-tables"
.LASF2:
	.string	"/home/linaro/development/gdb/binutils-gdb/gdb/testsuite/gdb.btrace"
.LASF4:
	.string	"answer"
.LASF1:
	.string	"tailcall.c"
.LASF3:
	.string	"main"
	.ident	"GCC: (Debian 10.2.1-3) 10.2.1 20201224"
	.section	.note.GNU-stack,"",@progbits
