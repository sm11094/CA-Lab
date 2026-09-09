main:
li x20, 5          
li x21, 0           
addi x20, x21, 32  
add x23, x20, x21   
addi x24, x23, -5   
sub x25, x20, x24   
sub x26, x21, x20  
add x27, x25, x26  
add x28, x27, x24   
add x29, x20, x21   
add x30, x29, x24   
add x31, x30, x28   

end:
    j end