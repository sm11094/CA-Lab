main:
    addi x10, x0, 5
    jal x1, fact
end:
    j end
fact:
    addi sp, sp, -16
    sw x1, 12(sp)
    sw x10, 8(sp)
    addi x5, x10, -1
    bge x5, x0, L1
    addi x10, x0, 1
    lw x1, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)
L1:
    addi x10, x10, -1
    jal x1, fact
    addi x6, x10, 0
    lw x10, 8(sp)
    lw x1, 12(sp)
    addi sp, sp, 16
    mul x10, x10, x6
    jalr x0, 0(x1)