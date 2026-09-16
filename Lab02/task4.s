#task 4
addi x10, x0, 0x200 #base address
addi x7, x0, 0 #i initialized as 0

addi x5, x0, 5 #a is 5
addi x6, x0, 3 #b is 3

first_loop:

addi x20, x0, 0 #j is initialized
second_loop:

slli x21, x20, 4
add  x22, x10, x21  
add  x23, x7, x20 #x23=i+j

sw   x23, 0(x22)   
addi x20, x20, 1 #j+=1
add x18,x0,x0

blt  x20, x6, second_loop #continue
addi x7, x7, 1 #i+=1

blt  x7, x5, first_loop  

done:
j done