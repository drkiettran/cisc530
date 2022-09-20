.text



main:
        addiu   $sp,$sp,-40 			# add immediate unsigned 
        sw      $31,36($sp)				# store word
        sw      $fp,32($sp)
        move    $fp,$sp					# move 
        li      $4,16                   # load immediate 0x16
        jal     square					# jump and link

        sw      $2,24($fp)
        move    $2,$0
        move    $sp,$fp
        lw      $31,36($sp)				# load word
        lw      $fp,32($sp)
        addiu   $sp,$sp,40	
        li 		$v0,10			
		syscall							# system call
square:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        sw      $4,8($fp)
        lw      $2,8($fp)
        nop
        mult    $2,$2					# Multiply
        mflo    $2						# move from HI 32 vs LOW 32 bit (64 bits)
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $ra						# Jump return $ra: return address register
    