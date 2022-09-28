# from C to MIPS gcc 5.2

.text
fixed_f:
    addiu   $sp,$sp,-24
    sw      $fp,20($sp)
    move    $fp,$sp
    sw      $a0,24($fp)
    sw      $a1,28($fp)
    sw      $a2,32($fp)
    sw      $a3,36($fp)
    lw      $v1,24($fp)
    lw      $v0,28($fp)
    nop

    ### (i1 + i2)
    addu    $v1,$v1,$2
    lw      $v0,32($fp)
    nop

    ### (i1 + i2) * i3

    mult    $v1,$2
    lw      $v0,36($fp)
    mflo    $v1
    nop
    nop
    
    ### ((i1 + i2) * i3) / i4;
    div     $0,$v1,$v0
    mfhi    $v0
    mflo    $v0
    sw      $v0,8($fp)
    lw      $v0,8($fp)
    move    $sp,$fp
    lw      $fp,20($sp)
    addiu   $sp,$sp,24
    j       $31
    nop

float_f:
    addiu   $sp,$sp,-24
    sw      $fp,20($sp)
    move    $fp,$sp
    swc1    $f12,24($fp)
    swc1    $f14,28($fp)
    sw      $a2,32($fp)
    sw      $a3,36($fp)
    lwc1    $f2,24($fp)
    lwc1    $f0,28($fp)
    nop

    ### (f1 + f2)
    add.s   $f2,$f2,$f0
    lwc1    $f0,32($fp)
    nop

    ### (f1 + f2) * f3
    mul.s   $f2,$f2,$f0
    lwc1    $f0,36($fp)
    nop

    ### ((f1 + f2) * f3) / f4
    div.s   $f0,$f2,$f0
    swc1    $f0,8($fp)
    lwc1    $f0,8($fp)
    move    $sp,$fp
    lw      $fp,20($sp)
    addiu   $sp,$sp,24
    j       $31
    nop

double_f:
    addiu   $sp,$sp,-24
    sw      $fp,20($sp)
    move    $fp,$sp
    swc1    $f12,28($fp)
    swc1    $f13,24($fp)
    swc1    $f14,36($fp)
    swc1    $f15,32($fp)
    lwc1    $f2,28($fp)
    nop
    lwc1    $f3,24($fp)
    lwc1    $f0,36($fp)
    nop
    lwc1    $f1,32($fp)
    nop

    ### (d1 + d2)
    add.d   $f2,$f2,$f0
    lwc1    $f0,44($fp)
    nop
    lwc1    $f1,40($fp)
    nop

    ### (d1 + d2) * d3
    mul.d   $f2,$f2,$f0
    lwc1    $f0,52($fp)
    nop
    lwc1    $f1,48($fp)
    nop

    ### ((d1 + d2) * d3) / d4
    div.d   $f0,$f2,$f0
    swc1    $f0,12($fp)
    swc1    $f1,8($fp)
    lwc1    $f0,12($fp)
    nop
    lwc1    $f1,8($fp)
    move    $sp,$fp
    lw      $fp,20($sp)
    addiu   $sp,$sp,24
    j       $31
    nop
# ----------------------------------------------
# Main program:
# This program calls three (3) functions, 
# fixed_f, float_f, and double_f to make the
# same computation of the same value but on 
# three (3) different data types (int, float, 
# and double).
# ----------------------------------------------
main:
    addiu   $sp,$sp,-128
    sw      $31,124($sp)
    sw      $fp,120($sp)
    move    $fp,$sp

    ### int res_i = 111, i1 = 1, i2 = 2, i3 = 3, i4 = 4;
    li      $v0,111       # 0x6f
    sw      $v0,40($fp)
    li      $v0,1         # 0x1
    sw      $v0,44($fp)
    li      $v0,2         # 0x2
    sw      $v0,48($fp)
    li      $v0,3         # 0x3
    sw      $v0,52($fp)
    li      $v0,4         # 0x4
    sw      $v0,56($fp)

    ### float res_f = 222.22, f1 = 1.1, f2 = 2.2, f3=3.3, f4=4.4;

    li.s    $f0,222.22
    swc1    $f0,60($fp)
    
    li.s    $f0,1.1
    swc1    $f0,64($fp)
    
    li.s    $f0,2.2
    swc1    $f0,68($fp)
    
    li.s    $f0,3.3
    swc1    $f0,72($fp)

    li.s    $f0,4.4        
    swc1    $f0,76($fp)

    ### double res_d = 333.33, d1 = 1.1, d2=2.2, d3=3.3, d4=4.4;

    li.d    $f0,333.33
    swc1    $f0,84($fp)
    swc1    $f1,80($fp)

    li.d    $f0,1.1
    swc1    $f0,92($fp)
    swc1    $f1,88($fp)

    li.d    $f0,2.2
    swc1    $f0,100($fp)
    swc1    $f1,96($fp)

    li.d    $f0,3.3
    swc1    $f0,108($fp)
    swc1    $f1,104($fp)

    li.d    $f0,4.4
    swc1    $f0,116($fp)
    swc1    $f1,112($fp)

    ### res_i = fixed_f(i1, i2, i3, i4);

    lw      $a3,56($fp)
    lw      $a2,52($fp)
    lw      $a1,48($fp)
    lw      $a0,44($fp)
    jal     fixed_f
    nop
    sw      $v0,40($fp)

    ### res_f = float_f(f1, f2, f3, f4);

    lw      $a3,76($fp)
    lw      $a2,72($fp)
    lwc1    $f14,68($fp)
    lwc1    $f12,64($fp)
    jal     float_f
    nop
    swc1    $f0,60($fp)
    lwc1    $f0,116($fp)

    ### res_d = double_f(d1, d2, d3, d4);

    nop
    lwc1    $f1,112($fp)
    nop
    swc1    $f0,28($sp)
    swc1    $f1,24($sp)
    lwc1    $f0,108($fp)
    nop
    lwc1    $f1,104($fp)
    nop
    swc1    $f0,20($sp)
    swc1    $f1,16($sp)
    lwc1    $f14,100($fp)
    nop
    lwc1    $f15,96($fp)
    lwc1    $f12,92($fp)
    nop
    lwc1    $f13,88($fp)
    jal     double_f
    nop
    swc1    $f0,84($fp)
    swc1    $f1,80($fp)

    ### return 0;

    move    $v0,$0
    move    $sp,$fp
    lw      $31,124($sp)
    lw      $fp,120($sp)
    addiu   $sp,$sp,128
    j       $31
    nop

.data
LC0:
        .word   1130248274  # 222.22/2.22220001220703125E2/0x435E3852
LC1:
        .word   1066192077  # 1.1/1.10000002384185791015625/0x3F8CCCCD
LC2:
        .word   1074580685  # 2.2/2.2000000476837158203125/0x400CCCCD
LC3:
        .word   1079194419  # 3.3/3.2999999523162841796875/0x40533333
LC4:
        .word   1082969293  # 4.4/4.400000095367431640625/0x408CCCCD
LC5:
        .word   1081398599  # 333.33/3.3332999999999998408384271897375583648681640625E2/0x4074D547AE147AE1
        .word   2920577761
LC6:
        .word   1072798105  # 1.1/1.100000000000000088817841970012523233890533447265625/0x3FF199999999999A
        .word   2576980378  
LC7:
        .word   1073846681  # 2.2/2.20000000000000017763568394002504646778106689453125/0x400199999999999A
        .word   2576980378
LC8:
        .word   1074423398  # 3.3/3.29999999999999982236431605997495353221893310546875/0x400A666666666666
        .word   1717986918
LC9:
        .word   1074895257  # 4.4/4.4000000000000003552713678800500929355621337890625/0x401199999999999A
        .word   2576980378

### Additional values:
# 2.475/2.4750001430511474609375/0x401e6667
# 2.475/2.474998955056071370250947438762523233890533447265625/0x4003cccc408ccccd
