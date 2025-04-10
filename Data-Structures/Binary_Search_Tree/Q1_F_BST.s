	.arch armv8-a
	.file	"Q1_F_BST.c"
	.text
	.align	2
	.global	levelOrderTraversal
	.type	levelOrderTraversal, %function
levelOrderTraversal:
.LFB40:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE40:
	.size	levelOrderTraversal, .-levelOrderTraversal
	.align	2
	.global	insertBSTNode
	.type	insertBSTNode, %function
insertBSTNode:
.LFB41:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	mov	w19, w1
	ldr	x0, [x0]
	cbz	x0, .L7
	ldr	w1, [x0]
	cmp	w1, w19
	bgt	.L8
	blt	.L9
.L2:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L7:
	.cfi_restore_state
	mov	x0, 24
	bl	malloc
	str	x0, [x20]
	cbz	x0, .L2
	str	w19, [x0]
	ldr	x0, [x20]
	str	xzr, [x0, 8]
	ldr	x0, [x20]
	str	xzr, [x0, 16]
	b	.L2
.L8:
	mov	w1, w19
	add	x0, x0, 8
	bl	insertBSTNode
	b	.L2
.L9:
	mov	w1, w19
	add	x0, x0, 16
	bl	insertBSTNode
	b	.L2
	.cfi_endproc
.LFE41:
	.size	insertBSTNode, .-insertBSTNode
	.align	2
	.global	dequeue
	.type	dequeue, %function
dequeue:
.LFB43:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x2, x0
	ldr	x0, [x0]
	ldr	x19, [x0]
	ldr	x3, [x0, 8]
	str	x3, [x2]
	cbz	x3, .L13
.L11:
	bl	free
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L13:
	.cfi_restore_state
	str	xzr, [x1]
	b	.L11
	.cfi_endproc
.LFE43:
	.size	dequeue, .-dequeue
	.align	2
	.global	isEmpty
	.type	isEmpty, %function
isEmpty:
.LFB44:
	.cfi_startproc
	cmp	x0, 0
	cset	w0, eq
	ret
	.cfi_endproc
.LFE44:
	.size	isEmpty, .-isEmpty
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Node not inserted"
	.text
	.align	2
	.global	enqueue
	.type	enqueue, %function
enqueue:
.LFB42:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	mov	x20, x1
	mov	x22, x2
	mov	x0, 16
	bl	malloc
	cbz	x0, .L16
	mov	x19, x0
	str	x22, [x0]
	str	xzr, [x0, 8]
	ldr	x0, [x21]
	bl	isEmpty
	cbz	w0, .L17
	str	x19, [x21]
.L18:
	str	x19, [x20]
.L15:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L17:
	.cfi_restore_state
	ldr	x0, [x20]
	str	x19, [x0, 8]
	b	.L18
.L16:
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	mov	w0, 2
	bl	__printf_chk
	b	.L15
	.cfi_endproc
.LFE42:
	.size	enqueue, .-enqueue
	.align	2
	.global	removeAll
	.type	removeAll, %function
removeAll:
.LFB45:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	ldr	x0, [x0]
	cbz	x0, .L21
	add	x0, x0, 8
	bl	removeAll
	ldr	x0, [x19]
	add	x0, x0, 16
	bl	removeAll
	ldr	x0, [x19]
	bl	free
	str	xzr, [x19]
.L21:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE45:
	.size	removeAll, .-removeAll
	.section	.rodata.str1.8
	.align	3
.LC1:
	.string	"1: Insert an integer into the binary search tree;"
	.align	3
.LC2:
	.string	"2: Print the level-order traversal of the binary search tree;"
	.align	3
.LC3:
	.string	"0: Quit;"
	.align	3
.LC4:
	.string	"Please input your choice(1/2/0): "
	.align	3
.LC5:
	.string	"%d"
	.align	3
.LC6:
	.string	"Input an integer that you want to insert into the Binary Search Tree: "
	.align	3
.LC7:
	.string	"The resulting level-order traversal of the binary search tree is: "
	.align	3
.LC8:
	.string	"Choice unknown;"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB39:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 8]
	str	xzr, [sp, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L25
.L26:
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	mov	w0, 2
	bl	__printf_chk
	add	x1, sp, 12
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__isoc99_scanf
	ldr	w1, [sp, 12]
	add	x0, sp, 16
	bl	insertBSTNode
.L25:
	ldr	w0, [sp, 8]
	cbz	w0, .L35
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	mov	w0, 2
	bl	__printf_chk
	add	x1, sp, 8
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__isoc99_scanf
	ldr	w0, [sp, 8]
	cmp	w0, 1
	beq	.L26
	cmp	w0, 2
	beq	.L27
	cbz	w0, .L28
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	puts
	b	.L25
.L27:
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	mov	w0, 2
	bl	__printf_chk
	mov	w0, 10
	bl	putchar
	b	.L25
.L28:
	add	x0, sp, 16
	bl	removeAll
	b	.L25
.L35:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 24]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L36
	mov	w0, 0
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L36:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
