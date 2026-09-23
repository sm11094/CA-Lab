li x10, 10 #g=x10
li x11, 20 #h=x11
li x12, 30 #i=x12
li x13, 40 #j=x13
li x18, 0
jal x1, leaf_example
add a1, a0, x0
li a0, 1
ecall
li a7, 10
ecall
 beq x0, x0, exit
leaf_example:
    addi sp, sp, -16
    sw s0, 0(sp)
    sw s1, 4(sp)
    add x18, x10, x11#x18=g+h
    add x19, x12, x13#x19=i+j
    sub x20, x18, x19#x20 = (g+h) - (i+j)
    lw s0, 0(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)
exit: