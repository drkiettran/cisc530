.text

main:
li $t0,1
jal procedure
li $v0,10
syscall

procedure:
li $t0, 3
jr $ra
