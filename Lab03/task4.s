sw x17, 0x200(x0)
li x17, 4
sb x17, 0x201(x0)
li x18, 0x100
li x21, 0x200
jal x1, strcpy
end1:
    j end1
strcpy:
    addi sp, sp, -16
    sw x19, 12(sp)
    li x19, 0
nonull:
    add x17, x19, x21
    lb x6, 0(x17)
    add x17, x19, x18
    sb x6, 0(x17)
    beq x6, x0, done
    addi x19, x19, 1
    beq x0, x0, nonull
done:
    lw x19, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)