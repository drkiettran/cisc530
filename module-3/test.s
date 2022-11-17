	.data
msg:
	.asciiz "begins..."
	.byte 	0, 1, 2, 3
	.asciiz "ends..."

	.text
	.globl main

main:
	la $a0 msg
	li $v0, 4
	syscall
	jr $ra

