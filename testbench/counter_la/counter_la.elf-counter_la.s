	.file	"counter_la.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SoCLab/course-lab_d/two_dram/SoCLab-ExtraLab/testbench/counter_la" "counter_la.c"
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB316:
	.file 1 "../../firmware/stub.c"
	.loc 1 19 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 20 2
	.loc 1 20 5 is_stmt 0
	li	a5,10
	beq	a0,a5,.L6
.LVL1:
.L2:
	.loc 1 22 13 discriminator 1
	li	a3,-268410880
	.loc 1 22 60 discriminator 1
	li	a4,1
.L3:
	.loc 1 22 60 is_stmt 1 discriminator 1
	.loc 1 22 13 is_stmt 0 discriminator 1
	lw	a5,-2044(a3)
	.loc 1 22 60 discriminator 1
	beq	a5,a4,.L3
	.loc 1 23 2 is_stmt 1
	.loc 1 23 50 is_stmt 0
	li	a5,-268410880
	sw	s0,-2048(a5)
	.loc 1 24 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL2:
.L6:
	.cfi_restore_state
	.loc 1 21 3 is_stmt 1
	li	a0,13
.LVL3:
	call	putchar
.LVL4:
	j	.L2
	.cfi_endproc
.LFE316:
	.size	putchar, .-putchar
	.align	2
	.globl	print
	.type	print, @function
print:
.LFB317:
	.loc 1 27 1
	.cfi_startproc
.LVL5:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 28 2
	.loc 1 28 9
	lbu	a0,0(a0)
.LVL6:
	beq	a0,zero,.L7
.L9:
	.loc 1 29 3
	.loc 1 29 14 is_stmt 0
	addi	s0,s0,1
.LVL7:
	.loc 1 29 3
	call	putchar
.LVL8:
	.loc 1 28 9 is_stmt 1
	lbu	a0,0(s0)
	bne	a0,zero,.L9
.L7:
	.loc 1 30 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE317:
	.size	print, .-print
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB318:
	.file 2 "counter_la.c"
	.loc 2 217 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 2 218 2
	.loc 2 245 9
	.loc 2 245 43 is_stmt 0
	li	a5,637534208
	li	a4,8192
	addi	a3,a4,-2039
	sw	a3,160(a5)
	.loc 2 246 9 is_stmt 1
	.loc 2 246 43 is_stmt 0
	sw	a3,156(a5)
	.loc 2 247 9 is_stmt 1
	.loc 2 247 43 is_stmt 0
	sw	a3,152(a5)
	.loc 2 248 9 is_stmt 1
	.loc 2 248 43 is_stmt 0
	sw	a3,148(a5)
	.loc 2 249 9 is_stmt 1
	.loc 2 249 43 is_stmt 0
	sw	a3,144(a5)
	.loc 2 250 9 is_stmt 1
	.loc 2 250 43 is_stmt 0
	sw	a3,140(a5)
	.loc 2 251 9 is_stmt 1
	.loc 2 251 43 is_stmt 0
	sw	a3,136(a5)
	.loc 2 252 9 is_stmt 1
	.loc 2 252 43 is_stmt 0
	sw	a3,132(a5)
	.loc 2 253 9 is_stmt 1
	.loc 2 253 43 is_stmt 0
	sw	a3,128(a5)
	.loc 2 254 9 is_stmt 1
	.loc 2 254 43 is_stmt 0
	sw	a3,124(a5)
	.loc 2 255 9 is_stmt 1
	.loc 2 255 43 is_stmt 0
	sw	a3,120(a5)
	.loc 2 256 9 is_stmt 1
	.loc 2 256 43 is_stmt 0
	sw	a3,116(a5)
	.loc 2 257 9 is_stmt 1
	.loc 2 257 43 is_stmt 0
	sw	a3,112(a5)
	.loc 2 258 9 is_stmt 1
	.loc 2 258 43 is_stmt 0
	sw	a3,108(a5)
	.loc 2 259 9 is_stmt 1
	.loc 2 259 43 is_stmt 0
	sw	a3,104(a5)
	.loc 2 260 9 is_stmt 1
	.loc 2 260 43 is_stmt 0
	sw	a3,100(a5)
	.loc 2 262 9 is_stmt 1
	.loc 2 262 43 is_stmt 0
	addi	a4,a4,-2040
	sw	a4,96(a5)
	.loc 2 263 9 is_stmt 1
	.loc 2 263 43 is_stmt 0
	sw	a4,92(a5)
	.loc 2 264 9 is_stmt 1
	.loc 2 264 43 is_stmt 0
	sw	a4,88(a5)
	.loc 2 265 9 is_stmt 1
	.loc 2 265 43 is_stmt 0
	sw	a4,84(a5)
	.loc 2 266 9 is_stmt 1
	.loc 2 266 43 is_stmt 0
	sw	a4,80(a5)
	.loc 2 267 9 is_stmt 1
	.loc 2 267 43 is_stmt 0
	sw	a4,76(a5)
	.loc 2 268 9 is_stmt 1
	.loc 2 268 43 is_stmt 0
	sw	a4,72(a5)
	.loc 2 269 9 is_stmt 1
	.loc 2 269 43 is_stmt 0
	sw	a4,68(a5)
	.loc 2 270 9 is_stmt 1
	.loc 2 270 43 is_stmt 0
	sw	a4,64(a5)
	.loc 2 271 9 is_stmt 1
	.loc 2 271 43 is_stmt 0
	sw	a4,56(a5)
	.loc 2 272 9 is_stmt 1
	.loc 2 272 43 is_stmt 0
	sw	a4,52(a5)
	.loc 2 273 9 is_stmt 1
	.loc 2 273 43 is_stmt 0
	sw	a4,48(a5)
	.loc 2 274 9 is_stmt 1
	.loc 2 274 43 is_stmt 0
	sw	a4,44(a5)
	.loc 2 275 9 is_stmt 1
	.loc 2 275 43 is_stmt 0
	sw	a4,40(a5)
	.loc 2 276 9 is_stmt 1
	.loc 2 276 43 is_stmt 0
	sw	a4,36(a5)
	.loc 2 278 9 is_stmt 1
	.loc 2 278 43 is_stmt 0
	sw	a3,60(a5)
	.loc 2 282 2 is_stmt 1
	.loc 2 282 50 is_stmt 0
	li	a4,1
	li	a3,-268410880
	sw	a4,0(a3)
	.loc 2 285 2 is_stmt 1
	.loc 2 285 36 is_stmt 0
	sw	a4,0(a5)
	.loc 2 286 2 is_stmt 1
	.loc 2 286 10 is_stmt 0
	li	a3,637534208
.L13:
	.loc 2 286 43 is_stmt 1 discriminator 1
	.loc 2 286 10 is_stmt 0 discriminator 1
	lw	a5,0(a3)
	.loc 2 286 43 discriminator 1
	beq	a5,a4,.L13
	.loc 2 290 2 is_stmt 1
	.loc 2 290 114 is_stmt 0
	li	a5,-268423168
	sw	zero,12(a5)
	.loc 2 290 57
	sw	zero,28(a5)
	.loc 2 291 2 is_stmt 1
	.loc 2 291 112 is_stmt 0
	li	a4,-1
	sw	a4,8(a5)
	.loc 2 291 56
	sw	a4,24(a5)
	.loc 2 292 2 is_stmt 1
	.loc 2 292 112 is_stmt 0
	sw	zero,4(a5)
	.loc 2 292 56
	sw	zero,20(a5)
	.loc 2 293 2 is_stmt 1
	.loc 2 293 100 is_stmt 0
	sw	zero,0(a5)
	.loc 2 293 50
	sw	zero,16(a5)
	.loc 2 296 2 is_stmt 1
	.loc 2 296 36 is_stmt 0
	li	s0,637534208
	li	a4,-1421869056
	sw	a4,12(s0)
	.loc 2 299 2 is_stmt 1
	.loc 2 299 56 is_stmt 0
	sw	zero,56(a5)
	.loc 2 302 2 is_stmt 1
	.loc 2 302 112 is_stmt 0
	sw	zero,8(a5)
	.loc 2 302 56
	sw	zero,24(a5)
	.loc 2 317 2 is_stmt 1
	.loc 2 317 13 is_stmt 0
	call	matmul
.LVL10:
	.loc 2 318 2 is_stmt 1
	.loc 2 318 43 is_stmt 0
	lw	a5,0(a0)
	slli	a5,a5,16
	.loc 2 318 36
	sw	a5,12(s0)
	.loc 2 319 2 is_stmt 1
	.loc 2 319 47 is_stmt 0
	lw	a5,4(a0)
	slli	a5,a5,16
	.loc 2 319 36
	sw	a5,12(s0)
	.loc 2 320 2 is_stmt 1
	.loc 2 320 47 is_stmt 0
	lw	a5,8(a0)
	slli	a5,a5,16
	.loc 2 320 36
	sw	a5,12(s0)
	.loc 2 321 2 is_stmt 1
	.loc 2 321 47 is_stmt 0
	lw	a5,12(a0)
	slli	a5,a5,16
	.loc 2 321 36
	sw	a5,12(s0)
	.loc 2 325 2 is_stmt 1
	.loc 2 325 47 is_stmt 0
	lw	a5,36(a0)
	slli	a5,a5,16
	.loc 2 325 36
	sw	a5,12(s0)
	.loc 2 326 2 is_stmt 1
	call	firPtr
.LVL11:
	.loc 2 327 2
	.loc 2 327 36 is_stmt 0
	li	a5,-1420754944
	sw	a5,12(s0)
	.loc 2 328 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE318:
	.size	main, .-main
.Letext0:
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x6
	.4byte	.LASF14
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
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
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x19
	.byte	0xd
	.4byte	0x86
	.byte	0x3
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x2
	.byte	0xcb
	.byte	0xd
	.4byte	0x98
	.4byte	0x98
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	0x6a
	.byte	0xb
	.4byte	.LASF12
	.byte	0x2
	.byte	0xd8
	.byte	0x6
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1
	.byte	0xc
	.string	"j"
	.byte	0x2
	.byte	0xda
	.byte	0x6
	.4byte	0x6a
	.byte	0xd
	.string	"tmp"
	.byte	0x2
	.2byte	0x13d
	.byte	0x7
	.4byte	0x98
	.4byte	.LLST2
	.byte	0x2
	.4byte	.LVL10
	.4byte	0x86
	.byte	0x2
	.4byte	.LVL11
	.4byte	0x78
	.byte	0
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x10e
	.byte	0x5
	.string	"p"
	.byte	0x1a
	.byte	0x18
	.4byte	0x10e
	.4byte	.LLST1
	.byte	0x2
	.4byte	.LVL8
	.4byte	0x11f
	.byte	0
	.byte	0x4
	.4byte	0x11a
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0xf
	.4byte	0x113
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.byte	0x5
	.string	"c"
	.byte	0x12
	.byte	0x13
	.4byte	0x113
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x11f
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
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
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
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
	.byte	0x11
	.byte	0x48
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x49
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x7e
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST2:
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL11-1
	.byte	0x1
	.byte	0x5a
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL9
	.byte	0x1
	.byte	0x58
	.byte	0
.LLST0:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LFE316
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"firPtr"
.LASF14:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O1 -ffreestanding"
.LASF17:
	.string	"matmul"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF13:
	.string	"putchar"
.LASF12:
	.string	"main"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF18:
	.string	"print"
.LASF3:
	.string	"short int"
.LASF15:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/SoCLab/course-lab_d/two_dram/SoCLab-ExtraLab/testbench/counter_la"
.LASF0:
	.string	"counter_la.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
