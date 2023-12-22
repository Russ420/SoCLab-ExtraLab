	.file	"dma.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SoCLab/course-lab_d/lab-sdram/testbench/counter_la" "../../firmware/dma.c"
<<<<<<< HEAD
	.globl	inst_addr
=======
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.globl	inst_ptr
	.section	.sbss,"aw",@nobits
	.align	2
	.type	inst_ptr, @object
	.size	inst_ptr, 4
inst_ptr:
	.zero	4
<<<<<<< HEAD
=======
	.globl	inst_addr
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.section	.sdata,"aw"
	.align	2
	.type	inst_addr, @object
	.size	inst_addr, 4
inst_addr:
<<<<<<< HEAD
	.word	905969664
	.text
.Letext0:
	.file 1 "../../firmware/dma.h"
	.file 2 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9a
=======
	.word	805306368
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	dma
	.type	dma, @function
dma:
.LFB0:
	.file 1 "../../firmware/dma.c"
	.loc 1 5 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 12 10
	sw	zero,-20(s0)
	.loc 1 14 24
	lw	a5,-40(s0)
	andi	a5,a5,255
	.loc 1 14 10
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 15 21
	lw	a5,-40(s0)
	andi	a4,a5,768
	.loc 1 15 14
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 15 7
	slli	a5,a5,12
	sw	a5,-20(s0)
	.loc 1 17 26
	lw	a5,-36(s0)
	andi	a4,a5,255
	.loc 1 17 17
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 17 10
	slli	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 18 23
	lw	a5,-36(s0)
	andi	a4,a5,768
	.loc 1 18 14
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 18 7
	slli	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 20 16
	lui	a5,%hi(inst_addr)
	lw	a5,%lo(inst_addr)(a5)
	mv	a4,a5
	.loc 1 20 14
	lui	a5,%hi(inst_ptr)
	sw	a4,%lo(inst_ptr)(a5)
	.loc 1 21 5
	lui	a5,%hi(inst_ptr)
	lw	a5,%lo(inst_ptr)(a5)
	.loc 1 21 15
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 22 1
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	dma, .-dma
	.text
.Letext0:
	.file 2 "../../firmware/dma.h"
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe2
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x3
<<<<<<< HEAD
	.4byte	.LASF13
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
=======
	.4byte	.LASF14
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
<<<<<<< HEAD
	.4byte	.LASF14
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x59
	.byte	0x5
	.4byte	0x48
=======
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.byte	0x5
	.4byte	0x50
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x5
	.byte	0x14
<<<<<<< HEAD
	.4byte	0x86
=======
	.4byte	0x8e
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.byte	0x5
	.byte	0x3
	.4byte	inst_ptr
	.byte	0x7
	.byte	0x4
<<<<<<< HEAD
	.4byte	0x54
=======
	.4byte	0x5c
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.byte	0x2
	.4byte	.LASF12
	.byte	0x6
	.byte	0x13
<<<<<<< HEAD
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	inst_addr
=======
	.4byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	inst_addr
	.byte	0x8
	.string	"dma"
	.byte	0x1
	.byte	0x3
	.byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4
	.byte	0xc
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xa
	.string	"end"
	.byte	0x1
	.byte	0x4
	.byte	0x1c
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0xe
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
<<<<<<< HEAD
	.byte	0x1
=======
	.byte	0x2
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
<<<<<<< HEAD
=======
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
<<<<<<< HEAD
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
=======
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
<<<<<<< HEAD
	.4byte	0
	.4byte	0
=======
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0
.Ldebug_ranges3:
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"unsigned int"
.LASF12:
	.string	"inst_addr"
<<<<<<< HEAD
=======
.LASF16:
	.string	"inst"
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
.LASF8:
	.string	"long unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned char"
<<<<<<< HEAD
.LASF14:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O2 -ffreestanding"
=======
.LASF15:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
.LASF7:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"inst_ptr"
<<<<<<< HEAD
.LASF3:
	.string	"short int"
=======
.LASF13:
	.string	"start"
.LASF3:
	.string	"short int"
.LASF14:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/SoCLab/course-lab_d/lab-sdram/testbench/counter_la"
.LASF0:
	.string	"../../firmware/dma.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
