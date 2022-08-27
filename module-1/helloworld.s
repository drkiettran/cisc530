# helloworld.s
# simple hello world program with MIPS assembly.

		.data
msg: 	.asciiz "Hello, world!\n"
		.extern foobar 4

		.text
		.globl main

main:	li $v0,4		# syscall 4 (print_str)
		la $a0,msg		# the argument for the call
		syscall			# make the call
		lw $t1, foobar

		jr $ra			# return to the caller
