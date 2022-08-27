.text
.globl main
main:
	li 		$t0,10 		# number of iteration
	li 		$t1,0 		# counter	
	li 		$t2,100 	# value to be modified

loop:
	beq 	$t1,$t0,end	# branch if equals
	add 	$t2,$t2,$t1	# add whatever the counter to val
	addi	$t1,$t1,1	# increment the counter
	j		loop		# jump to the begining of the loop
end:
	li 		$v0,10		# exit
	syscall
