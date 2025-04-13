	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #28]
	str	xzr, [sp, #16]
Lloh0:
	adrp	x0, l_str@PAGE
Lloh1:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
Lloh2:
	adrp	x0, l_str.9@PAGE
Lloh3:
	add	x0, x0, l_str.9@PAGEOFF
	bl	_puts
Lloh4:
	adrp	x0, l_str.10@PAGE
Lloh5:
	add	x0, x0, l_str.10@PAGEOFF
	bl	_puts
	ldr	w8, [sp, #28]
	cbz	w8, LBB0_10
; %bb.1:
Lloh6:
	adrp	x19, l_.str.3@PAGE
Lloh7:
	add	x19, x19, l_.str.3@PAGEOFF
Lloh8:
	adrp	x20, l_.str.4@PAGE
Lloh9:
	add	x20, x20, l_.str.4@PAGEOFF
Lloh10:
	adrp	x21, l_.str.6@PAGE
Lloh11:
	add	x21, x21, l_.str.6@PAGEOFF
	add	x24, sp, #28
Lloh12:
	adrp	x22, l_.str.5@PAGE
Lloh13:
	add	x22, x22, l_.str.5@PAGEOFF
	add	x25, sp, #24
Lloh14:
	adrp	x23, l_str.11@PAGE
Lloh15:
	add	x23, x23, l_str.11@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x21
	bl	_printf
	mov	w0, #10                         ; =0xa
	bl	_putchar
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #28]
	cbz	w8, LBB0_10
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x19
	bl	_printf
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #2
	b.eq	LBB0_2
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #1
	b.ne	LBB0_9
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x22
	bl	_printf
	str	x25, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w1, [sp, #24]
	add	x0, sp, #16
	bl	_insertBSTNode
	b	LBB0_3
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x0, sp, #16
	bl	_removeAll
	b	LBB0_3
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x23
	bl	_puts
	b	LBB0_3
LBB0_10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_insertBSTNode                  ; -- Begin function insertBSTNode
	.p2align	2
_insertBSTNode:                         ; @insertBSTNode
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	ldr	x8, [x20]
	cbnz	x8, LBB1_2
	b	LBB1_5
LBB1_1:                                 ;   in Loop: Header=BB1_2 Depth=1
	add	x20, x8, #8
	ldr	x8, [x20]
	cbz	x8, LBB1_5
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x8]
	cmp	w9, w19
	b.gt	LBB1_1
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	b.ge	LBB1_7
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	add	x20, x8, #16
	ldr	x8, [x20]
	cbnz	x8, LBB1_2
LBB1_5:
	mov	w0, #24                         ; =0x18
	bl	_malloc
	str	x0, [x20]
	cbz	x0, LBB1_7
; %bb.6:
	str	w19, [x0]
	stp	xzr, xzr, [x0, #8]
LBB1_7:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_postOrderIterativeS1           ; -- Begin function postOrderIterativeS1
	.p2align	2
_postOrderIterativeS1:                  ; @postOrderIterativeS1
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_removeAll                      ; -- Begin function removeAll
	.p2align	2
_removeAll:                             ; @removeAll
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x8, [x0]
	cbz	x8, LBB3_2
; %bb.1:
	mov	x19, x0
	add	x0, x8, #8
	bl	_removeAll
	ldr	x8, [x19]
	add	x0, x8, #16
	bl	_removeAll
	ldr	x0, [x19]
	bl	_free
	str	xzr, [x19]
LBB3_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_push                           ; -- Begin function push
	.p2align	2
_push:                                  ; @push
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x1
	mov	x19, x0
	mov	w0, #16                         ; =0x10
	bl	_malloc
	cbz	x0, LBB4_4
; %bb.1:
	str	x20, [x0]
	ldr	x8, [x19]
	cbz	x8, LBB4_3
; %bb.2:
	str	x8, [x0, #8]
	str	x0, [x19]
	b	LBB4_4
LBB4_3:
	str	x0, [x19]
	str	xzr, [x0, #8]
LBB4_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_pop                            ; -- Begin function pop
	.p2align	2
_pop:                                   ; @pop
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x8, x0
	ldr	x0, [x0]
	cbz	x0, LBB5_2
; %bb.1:
	ldp	x19, x9, [x0]
	str	x9, [x8]
	bl	_free
	b	LBB5_3
LBB5_2:
	mov	x19, #0                         ; =0x0
LBB5_3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_peek                           ; -- Begin function peek
	.p2align	2
_peek:                                  ; @peek
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	cbz	x8, LBB6_2
; %bb.1:
	ldr	x0, [x8]
	ret
LBB6_2:
	mov	x0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_isEmpty                        ; -- Begin function isEmpty
	.p2align	2
_isEmpty:                               ; @isEmpty
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	cmp	x8, #0
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.3:                               ; @.str.3
	.asciz	"Please input your choice(1/2/0): "

l_.str.4:                               ; @.str.4
	.asciz	"%d"

l_.str.5:                               ; @.str.5
	.asciz	"Input an integer that you want to insert into the Binary Search Tree: "

l_.str.6:                               ; @.str.6
	.asciz	"The resulting post-order traversal of the binary search tree is: "

l_str:                                  ; @str
	.asciz	"1: Insert an integer into the binary search tree;"

l_str.9:                                ; @str.9
	.asciz	"2: Print the post-order traversal of the binary search tree;"

l_str.10:                               ; @str.10
	.asciz	"0: Quit;"

l_str.11:                               ; @str.11
	.asciz	"Choice unknown;"

.subsections_via_symbols
