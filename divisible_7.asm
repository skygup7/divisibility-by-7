	## GroupID-50 (15114004_15114006) - AKASH GUPTA & AMAN AGARWAL
	## Date: Nvember 1, 2016
	## divisible_7.asm - This is the assembly code for taking a number as an input and checking whether the number is divisible by 7 or not.
	## Registers used:
	## $t0 - used to hold 7 as value ….
	## $t1 - used to hold 1 as value….
	## $t2 - used to store varible temp in c code….
	## $t3 - used to store 10 as a value
	## $t3 - used to store 2 as a value …



	.data
ask:			.asciiz "Enter in an integer: "
divisible:		.asciiz "The number is divisible by 7\n"
not_divisible:	.asciiz "The number is not divisible by 7\n"

	.globl main

	.text
main:
	
	li  $s0, 10 	#number to be checked
	li  $t0, 7  	#store 7
	li  $t1, 1		#store 1
	li  $t2, 0		#temp in divisible_7.c
	li  $t3, 10		#store 10
	li  $t4, 2		#store 2

	li  $v0, 4
    la  $a0, ask
    syscall

    li  $v0, 5
    syscall
    move    $s0, $v0

loop1:
	bge  $t0, $s0, loop2
	div  $s0, $t3
	mfhi $t2
	mflo $s0
	mult $t2, $t4
	mflo $t2
	sub  $s0, $s0, $t2
	j    loop1

loop2:
	bgtz $s0, here1
	addi $s0, 7
	j    loop2

here1:
	beq  $s0, $t0, here2
	li   $v0, 4
    la   $a0, not_divisible
    syscall
    j    end

here2:
	li   $v0, 4
    la   $a0, divisible
    syscall

end:
	jr $ra