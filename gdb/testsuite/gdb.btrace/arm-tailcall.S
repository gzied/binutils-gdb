 /* This testcase is part of GDB, the GNU debugger.

   Copyright 2013-2020 Free Software Foundation, Inc.

   Contributed by Trande UG. <zied.guermazi@trande.de>

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


   This file has been generated using:
   gcc -S -O2 -dA -g tailcall.c -o x86_64-tailcall.S  */

	.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"tailcall.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	bar, %function
bar:
.LFB0:
	.file 1 "tailcall.c"
	@ tailcall.c:22
	.loc 1 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ BLOCK 2 freq:10000 seq:0
@ PRED: ENTRY [100.0%]  (FALLTHRU)
	@ tailcall.c:24
	.loc 1 24 0
	movs	r0, #42
@ SUCC: EXIT [100.0%] 
	bx	lr
	.cfi_endproc
.LFE0:
	.size	bar, .-bar
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	foo, %function
foo:
.LFB1:
	@ tailcall.c:28
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ BLOCK 2 freq:10000 seq:0
@ PRED: ENTRY [100.0%]  (FALLTHRU)
@ SUCC: EXIT [100.0%]  (ABNORMAL,SIBCALL)
	@ tailcall.c:29
	.loc 1 29 0
	b	bar(PLT)
.LVL0:
	.cfi_endproc
.LFE1:
	.size	foo, .-foo
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
.LFB2:
	@ tailcall.c:34
	.loc 1 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ BLOCK 2 freq:10000 seq:0
@ PRED: ENTRY [100.0%]  (FALLTHRU)
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	@ tailcall.c:37
	.loc 1 37 0
	bl	foo(PLT)
.LVL1:
	@ tailcall.c:41
	.loc 1 41 0
	adds	r0, r0, #1
.LVL2:
@ SUCC: EXIT [100.0%] 
	pop	{r3, pc}
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x93	@ Length of Compilation Unit Info
	.2byte	0x4	@ DWARF version number
	.4byte	.Ldebug_abbrev0	@ Offset Into Abbrev. Section
	.byte	0x4	@ Pointer Size (in bytes)
	.uleb128 0x1	@ (DIE (0xb) DW_TAG_compile_unit)
	.4byte	.LASF0	@ DW_AT_producer: "GNU C11 7.4.0 -march=armv7-a -mfloat-abi=hard -mfpu=vfpv3-d16 -mthumb -mtls-dialect=gnu -g -O2 -fstack-protector-strong"
	.byte	0xc	@ DW_AT_language
	.4byte	.LASF1	@ DW_AT_name: "tailcall.c"
	.4byte	.LASF2	@ DW_AT_comp_dir: "/home/ubuntu/development/gdb/binutils-gdb/gdb/testsuite/gdb.btrace"
	.4byte	.Ldebug_ranges0+0	@ DW_AT_ranges
	.4byte	0	@ DW_AT_low_pc
	.4byte	.Ldebug_line0	@ DW_AT_stmt_list
	.uleb128 0x2	@ (DIE (0x25) DW_TAG_subprogram)
			@ DW_AT_external
	.4byte	.LASF3	@ DW_AT_name: "main"
	.byte	0x1	@ DW_AT_decl_file (tailcall.c)
	.byte	0x21	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	0x57	@ DW_AT_type
	.4byte	.LFB2	@ DW_AT_low_pc
	.4byte	.LFE2-.LFB2	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_call_sites
	.4byte	0x57	@ DW_AT_sibling
	.uleb128 0x3	@ (DIE (0x3e) DW_TAG_variable)
	.4byte	.LASF4	@ DW_AT_name: "answer"
	.byte	0x1	@ DW_AT_decl_file (tailcall.c)
	.byte	0x23	@ DW_AT_decl_line
	.4byte	0x57	@ DW_AT_type
	.4byte	.LLST0	@ DW_AT_location
	.uleb128 0x4	@ (DIE (0x4d) DW_TAG_GNU_call_site)
	.4byte	.LVL1	@ DW_AT_low_pc
	.4byte	0x5e	@ DW_AT_abstract_origin
	.byte	0	@ end of children of DIE 0x25
	.uleb128 0x5	@ (DIE (0x57) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.ascii "int\0"	@ DW_AT_name
	.uleb128 0x6	@ (DIE (0x5e) DW_TAG_subprogram)
	.ascii "foo\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (tailcall.c)
	.byte	0x1b	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	0x57	@ DW_AT_type
	.4byte	.LFB1	@ DW_AT_low_pc
	.4byte	.LFE1-.LFB1	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_call_sites
	.4byte	0x81	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x77) DW_TAG_GNU_call_site)
	.4byte	.LVL0	@ DW_AT_low_pc
			@ DW_AT_GNU_tail_call
	.4byte	0x81	@ DW_AT_abstract_origin
	.byte	0	@ end of children of DIE 0x5e
	.uleb128 0x8	@ (DIE (0x81) DW_TAG_subprogram)
	.ascii "bar\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (tailcall.c)
	.byte	0x15	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	0x57	@ DW_AT_type
	.4byte	.LFB0	@ DW_AT_low_pc
	.4byte	.LFE0-.LFB0	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_call_sites
	.byte	0	@ end of children of DIE 0xb
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1	@ (abbrev code)
	.uleb128 0x11	@ (TAG: DW_TAG_compile_unit)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x25	@ (DW_AT_producer)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x13	@ (DW_AT_language)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x1b	@ (DW_AT_comp_dir)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x55	@ (DW_AT_ranges)
	.uleb128 0x17	@ (DW_FORM_sec_offset)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x10	@ (DW_AT_stmt_list)
	.uleb128 0x17	@ (DW_FORM_sec_offset)
	.byte	0
	.byte	0
	.uleb128 0x2	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3f	@ (DW_AT_external)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x40	@ (DW_AT_frame_base)
	.uleb128 0x18	@ (DW_FORM_exprloc)
	.uleb128 0x2117	@ (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x3	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x2	@ (DW_AT_location)
	.uleb128 0x17	@ (DW_FORM_sec_offset)
	.byte	0
	.byte	0
	.uleb128 0x4	@ (abbrev code)
	.uleb128 0x4109	@ (TAG: DW_TAG_GNU_call_site)
	.byte	0	@ DW_children_no
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x31	@ (DW_AT_abstract_origin)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x5	@ (abbrev code)
	.uleb128 0x24	@ (TAG: DW_TAG_base_type)
	.byte	0	@ DW_children_no
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3e	@ (DW_AT_encoding)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.byte	0
	.byte	0
	.uleb128 0x6	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x40	@ (DW_AT_frame_base)
	.uleb128 0x18	@ (DW_FORM_exprloc)
	.uleb128 0x2117	@ (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x7	@ (abbrev code)
	.uleb128 0x4109	@ (TAG: DW_TAG_GNU_call_site)
	.byte	0	@ DW_children_no
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x2115	@ (DW_AT_GNU_tail_call)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x31	@ (DW_AT_abstract_origin)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x8	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x40	@ (DW_AT_frame_base)
	.uleb128 0x18	@ (DW_FORM_exprloc)
	.uleb128 0x2117	@ (DW_AT_GNU_all_call_sites)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1	@ Location list begin address (*.LLST0)
	.4byte	.LVL2	@ Location list end address (*.LLST0)
	.2byte	0x3	@ Location expression size
	.byte	0x70	@ DW_OP_breg0
	.sleb128 1
	.byte	0x9f	@ DW_OP_stack_value
	.4byte	.LVL2	@ Location list begin address (*.LLST0)
	.4byte	.LFE2	@ Location list end address (*.LLST0)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	0	@ Location list terminator begin (*.LLST0)
	.4byte	0	@ Location list terminator end (*.LLST0)
	.section	.debug_aranges,"",%progbits
	.4byte	0x24	@ Length of Address Ranges Info
	.2byte	0x2	@ DWARF Version
	.4byte	.Ldebug_info0	@ Offset of Compilation Unit Info
	.byte	0x4	@ Size of Address
	.byte	0	@ Size of Segment Descriptor
	.2byte	0	@ Pad to 8 byte boundary
	.2byte	0
	.4byte	.Ltext0	@ Address
	.4byte	.Letext0-.Ltext0	@ Length
	.4byte	.LFB2	@ Address
	.4byte	.LFE2-.LFB2	@ Length
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0	@ Offset 0
	.4byte	.Letext0
	.4byte	.LFB2	@ Offset 0x8
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"GNU C11 7.4.0 -march=armv7-a -mfloat-abi=hard -mfpu"
	.ascii	"=vfpv3-d16 -mthumb -mtls-dialect=gnu -g -O2 -fstack"
	.ascii	"-protector-strong\000"
.LASF4:
	.ascii	"answer\000"
.LASF1:
	.ascii	"tailcall.c\000"
.LASF2:
	.ascii	"/home/ubuntu/development/gdb/binutils-gdb/gdb/tests"
	.ascii	"uite/gdb.btrace\000"
.LASF3:
	.ascii	"main\000"
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
