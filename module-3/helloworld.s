.text

main:	
    li $v0,4		# syscall 4 (print_str)
	la $a0,msg		# the argument for the call
	syscall			# make the call
