.data
array:
    .word 1, 2, 3, 4

.text
main:
    la x10, array
    addi x11, x0, 4
    jal x1, sumSquares
end:
    j end
sumSquares:
    addi sp, sp, -16
    sw x1, 12(sp)
    sw x8, 8(sp)
    sw x9, 4(sp)
    sw x18, 0(sp)
    addi x8, x10, 0
    addi x9, x11, 0
    addi x18, x0, 0

loop:
    beq x9, x0, done
    lw x10, 0(x8)
    jal x1, square
    add x18, x18, x10
    addi x8, x8, 4
    addi x9, x9, -1
    jal x0, loop
done:
    addi x10, x18, 0
    lw x18, 0(sp)
    lw x9, 4(sp)
    lw x8, 8(sp)
    lw x1, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)
square:
    mul x10, x10, x10
    jalr x0, 0(x1)