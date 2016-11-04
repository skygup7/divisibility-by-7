	.file	"divisible_7.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "Divisible by 7\0"
LC2:
	.ascii "Not Divisible by 7\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	jmp	L2
L3:
	movl	24(%esp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 28(%esp)
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 28(%esp)
	movl	24(%esp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	28(%esp), %edx
	movl	$0, %eax
	subl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	24(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 24(%esp)
L2:
	movl	24(%esp), %eax
	cmpl	$7, %eax
	jg	L3
	jmp	L4
L5:
	movl	24(%esp), %eax
	addl	$7, %eax
	movl	%eax, 24(%esp)
L4:
	movl	24(%esp), %eax
	testl	%eax, %eax
	jle	L5
	movl	24(%esp), %eax
	cmpl	$7, %eax
	jne	L6
	movl	$LC1, (%esp)
	call	_puts
	jmp	L7
L6:
	movl	$LC2, (%esp)
	call	_puts
L7:
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (GNU) 4.8.1"
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
