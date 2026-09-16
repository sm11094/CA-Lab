#task 3
addi x22, x0, 0 #initializing i
addi x23, x0, 0 #initializing sum

addi x9, x0, 0x200 #base address
addi x11, x0, 10#10
add x18,x0,x0

Initial_loop:

slli x13, x22, 2
add x14, x9, x13
sw x22, 0(x14)

beq x22, x11, exit_initial
addi x22, x22, 1
beq x0, x0, Initial_loop

exit_initial:

addi x22, x0, 0 

after_loop:

slli x13, x22, 2
add x14, x9, x13
lw x16, 0(x14)
add x23, x23, x16 

beq x22, x11, exit_after_loop
addi x22, x22, 1
beq x0, x0, after_loop

exit_after_loop:

add x5, x0, x0