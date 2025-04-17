	.arch armv8-a
	.file	"Q1_F_BST.c"
	.text
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
	cbz	x0, .L6
	ldr	w1, [x0]
	cmp	w1, w19
	bgt	.L7
	blt	.L8
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L6:
	.cfi_restore_state
	mov	x0, 24
	bl	malloc
	str	x0, [x20]
	cbz	x0, .L1
	str	w19, [x0]
	ldr	x0, [x20]
	str	xzr, [x0, 8]
	ldr	x0, [x20]
	str	xzr, [x0, 16]
	b	.L1
.L7:
	mov	w1, w19
	add	x0, x0, 8
	bl	insertBSTNode
	b	.L1
.L8:
	mov	w1, w19
	add	x0, x0, 16
	bl	insertBSTNode
	b	.L1
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
	cbz	x3, .L12
.L10:
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
.L12:
	.cfi_restore_state
	str	xzr, [x1]
	b	.L10
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
	cbz	x0, .L15
	mov	x19, x0
	str	x22, [x0]
	str	xzr, [x0, 8]
	ldr	x0, [x21]
	bl	isEmpty
	cbz	w0, .L16
	str	x19, [x21]
.L17:
	str	x19, [x20]
.L14:
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
.L16:
	.cfi_restore_state
	ldr	x0, [x20]
	str	x19, [x0, 8]
	b	.L17
.L15:
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	mov	w0, 2
	bl	__printf_chk
	b	.L14
	.cfi_endproc
.LFE42:
	.size	enqueue, .-enqueue
	.section	.rodata.str1.8
	.align	3
.LC1:
	.string	"%d "
	.text
	.align	2
	.global	levelOrderTraversal
	.type	levelOrderTraversal, %function
levelOrderTraversal:
.LFB40:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x19, x0
	mov	x0, 16
	bl	malloc
	mov	x20, x0
	str	xzr, [x0]
	mov	x21, x0
	str	xzr, [x21, 8]!
	mov	x2, x19
	mov	x1, x21
	bl	enqueue
	b	.L21
.L26:
	ldr	w2, [x0]
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	mov	w0, 2
	bl	__printf_chk
	ldr	x2, [x19, 8]
	mov	x1, x21
	mov	x0, x20
	bl	enqueue
	ldr	x2, [x19, 16]
	mov	x1, x21
	mov	x0, x20
	bl	enqueue
.L21:
	ldr	x0, [x20]
	bl	isEmpty
	cbnz	w0, .L25
	mov	x1, x21
	mov	x0, x20
	bl	dequeue
	mov	x19, x0
	cbnz	x0, .L26
	b	.L21
.L25:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE40:
	.size	levelOrderTraversal, .-levelOrderTraversal
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
	cbz	x0, .L27
	add	x0, x0, 8
	bl	removeAll
	ldr	x0, [x19]
	add	x0, x0, 16
	bl	removeAll
	ldr	x0, [x19]
	bl	free
	str	xzr, [x19]
.L27:
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
.LC2:
	.string	"1: Insert an integer into the binary search tree;"
	.align	3
.LC3:
	.string	"2: Print the level-order traversal of the binary search tree;"
	.align	3
.LC4:
	.string	"0: Quit;"
	.align	3
.LC5:
	.string	"Please input your choice(1/2/0): "
	.align	3
.LC6:
	.string	"%d"
	.align	3
.LC7:
	.string	"Input an integer that you want to insert into the Binary Search Tree: "
	.align	3
.LC8:
	.string	"The resulting level-order traversal of the binary search tree is: "
	.align	3
.LC9:
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
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
	b	.L31
.L32:
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	mov	w0, 2
	bl	__printf_chk
	add	x1, sp, 12
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__isoc99_scanf
	ldr	w1, [sp, 12]
	add	x0, sp, 16
	bl	insertBSTNode
.L31:
	ldr	w0, [sp, 8]
	cbz	w0, .L41
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	mov	w0, 2
	bl	__printf_chk
	add	x1, sp, 8
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__isoc99_scanf
	ldr	w0, [sp, 8]
	cmp	w0, 1
	beq	.L32
	cmp	w0, 2
	beq	.L33
	cbz	w0, .L34
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	puts
	b	.L31
.L33:
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	mov	w0, 2
	bl	__printf_chk
	ldr	x0, [sp, 16]
	bl	levelOrderTraversal
	mov	w0, 10
	bl	putchar
	b	.L31
.L34:
	add	x0, sp, 16
	bl	removeAll
	b	.L31
.L41:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 24]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L42
	mov	w0, 0
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L42:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
