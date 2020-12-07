/* This testcase is part of GDB, the GNU debugger.

   Copyright 2013-2019 Free Software Foundation, Inc.

   Contributed by Intel Corp. <markus.t.metzger@intel.com>
   Contributed by Trande UG.  <zied.guermazi@trande.de>

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
   gcc -S -dA -g record_goto.c -o arm-record_goto.S  */

	.arch armv7-a
	.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 6	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"record_goto.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	fun1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fun1, %function
fun1:
.LFB0:
	.file 1 "record_goto.c"
	@ record_goto.c:22
	.loc 1 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
@ BLOCK 2 seq:0
@ PRED: ENTRY (FALLTHRU)
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	@ record_goto.c:23
	.loc 1 23 0
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
@ SUCC: EXIT [100.0%] 
	bx	lr
	.cfi_endproc
.LFE0:
	.size	fun1, .-fun1
	.align	1
	.global	fun2
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fun2, %function
fun2:
.LFB1:
	@ record_goto.c:27
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
@ BLOCK 2 seq:0
@ PRED: ENTRY (FALLTHRU)
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	@ record_goto.c:28
	.loc 1 28 0
	bl	fun1(PLT)
	@ record_goto.c:29
	.loc 1 29 0
	nop
@ SUCC: EXIT [100.0%] 
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	fun2, .-fun2
	.align	1
	.global	fun3
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fun3, %function
fun3:
.LFB2:
	@ record_goto.c:33
	.loc 1 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
@ BLOCK 2 seq:0
@ PRED: ENTRY (FALLTHRU)
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	@ record_goto.c:34
	.loc 1 34 0
	bl	fun1(PLT)
	@ record_goto.c:35
	.loc 1 35 0
	bl	fun2(PLT)
	@ record_goto.c:36
	.loc 1 36 0
	nop
@ SUCC: EXIT [100.0%] 
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	fun3, .-fun3
	.align	1
	.global	fun4
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fun4, %function
fun4:
.LFB3:
	@ record_goto.c:40
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
@ BLOCK 2 seq:0
@ PRED: ENTRY (FALLTHRU)
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	@ record_goto.c:41
	.loc 1 41 0
	bl	fun1(PLT)
	@ record_goto.c:42
	.loc 1 42 0
	bl	fun2(PLT)
	@ record_goto.c:43
	.loc 1 43 0
	bl	fun3(PLT)
	@ record_goto.c:44
	.loc 1 44 0
	nop
@ SUCC: EXIT [100.0%] 
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	fun4, .-fun4
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
.LFB4:
	@ record_goto.c:48
	.loc 1 48 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
@ BLOCK 2 seq:0
@ PRED: ENTRY (FALLTHRU)
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	@ record_goto.c:49
	.loc 1 49 0
	bl	fun4(PLT)
	@ record_goto.c:50
	.loc 1 50 0
	movs	r3, #0
	@ record_goto.c:51
	.loc 1 51 0
	mov	r0, r3
@ SUCC: EXIT [100.0%] 
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x82	@ Length of Compilation Unit Info
	.2byte	0x4	@ DWARF version number
	.4byte	.Ldebug_abbrev0	@ Offset Into Abbrev. Section
	.byte	0x4	@ Pointer Size (in bytes)
	.uleb128 0x1	@ (DIE (0xb) DW_TAG_compile_unit)
	.4byte	.LASF4	@ DW_AT_producer: "GNU C11 7.4.0 -march=armv7-a -mfloat-abi=hard -mfpu=vfpv3-d16 -mthumb -mtls-dialect=gnu -g -fstack-protector-strong"
	.byte	0xc	@ DW_AT_language
	.4byte	.LASF5	@ DW_AT_name: "record_goto.c"
	.4byte	.LASF6	@ DW_AT_comp_dir: "/home/ubuntu/development/gdb/binutils-gdb/gdb/testsuite/gdb.btrace"
	.4byte	.Ltext0	@ DW_AT_low_pc
	.4byte	.Letext0-.Ltext0	@ DW_AT_high_pc
	.4byte	.Ldebug_line0	@ DW_AT_stmt_list
	.uleb128 0x2	@ (DIE (0x25) DW_TAG_subprogram)
			@ DW_AT_external
	.4byte	.LASF7	@ DW_AT_name: "main"
	.byte	0x1	@ DW_AT_decl_file (record_goto.c)
	.byte	0x2f	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	0x3a	@ DW_AT_type
	.4byte	.LFB4	@ DW_AT_low_pc
	.4byte	.LFE4-.LFB4	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_tail_call_sites
	.uleb128 0x3	@ (DIE (0x3a) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.ascii "int\0"	@ DW_AT_name
	.uleb128 0x4	@ (DIE (0x41) DW_TAG_subprogram)
			@ DW_AT_external
	.4byte	.LASF0	@ DW_AT_name: "fun4"
	.byte	0x1	@ DW_AT_decl_file (record_goto.c)
	.byte	0x27	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	.LFB3	@ DW_AT_low_pc
	.4byte	.LFE3-.LFB3	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_tail_call_sites
	.uleb128 0x4	@ (DIE (0x52) DW_TAG_subprogram)
			@ DW_AT_external
	.4byte	.LASF1	@ DW_AT_name: "fun3"
	.byte	0x1	@ DW_AT_decl_file (record_goto.c)
	.byte	0x20	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	.LFB2	@ DW_AT_low_pc
	.4byte	.LFE2-.LFB2	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_tail_call_sites
	.uleb128 0x4	@ (DIE (0x63) DW_TAG_subprogram)
			@ DW_AT_external
	.4byte	.LASF2	@ DW_AT_name: "fun2"
	.byte	0x1	@ DW_AT_decl_file (record_goto.c)
	.byte	0x1a	@ DW_AT_decl_line
			@ DW_AT_prototyped
	.4byte	.LFB1	@ DW_AT_low_pc
	.4byte	.LFE1-.LFB1	@ DW_AT_high_pc
	.uleb128 0x1	@ DW_AT_frame_base
	.byte	0x9c	@ DW_OP_call_frame_cfa
			@ DW_AT_GNU_all_tail_call_sites
	.uleb128 0x5	@ (DIE (0x74) DW_TAG_subprogram)
			@ DW_AT_external
	.4byte	.LASF3	@ DW_AT_name: "fun1"
	.byte	0x1	@ DW_AT_decl_file (record_goto.c)
	.byte	0x15	@ DW_AT_decl_line
			@ DW_AT_prototyped
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
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x10	@ (DW_AT_stmt_list)
	.uleb128 0x17	@ (DW_FORM_sec_offset)
	.byte	0
	.byte	0
	.uleb128 0x2	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0	@ DW_children_no
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
	.uleb128 0x2116	@ (DW_AT_GNU_all_tail_call_sites)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.uleb128 0x3	@ (abbrev code)
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
	.uleb128 0x4	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0	@ DW_children_no
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
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x40	@ (DW_AT_frame_base)
	.uleb128 0x18	@ (DW_FORM_exprloc)
	.uleb128 0x2116	@ (DW_AT_GNU_all_tail_call_sites)
	.uleb128 0x19	@ (DW_FORM_flag_present)
	.byte	0
	.byte	0
	.uleb128 0x5	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0	@ DW_children_no
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
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c	@ Length of Address Ranges Info
	.2byte	0x2	@ DWARF Version
	.4byte	.Ldebug_info0	@ Offset of Compilation Unit Info
	.byte	0x4	@ Size of Address
	.byte	0	@ Size of Segment Descriptor
	.2byte	0	@ Pad to 8 byte boundary
	.2byte	0
	.4byte	.Ltext0	@ Address
	.4byte	.Letext0-.Ltext0	@ Length
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"record_goto.c\000"
.LASF2:
	.ascii	"fun2\000"
.LASF6:
	.ascii	"/home/ubuntu/development/gdb/binutils-gdb/gdb/tests"
	.ascii	"uite/gdb.btrace\000"
.LASF4:
	.ascii	"GNU C11 7.4.0 -march=armv7-a -mfloat-abi=hard -mfpu"
	.ascii	"=vfpv3-d16 -mthumb -mtls-dialect=gnu -g -fstack-pro"
	.ascii	"tector-strong\000"
.LASF0:
	.ascii	"fun4\000"
.LASF3:
	.ascii	"fun1\000"
.LASF7:
	.ascii	"main\000"
.LASF1:
	.ascii	"fun3\000"
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
