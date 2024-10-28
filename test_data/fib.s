addi x10, x10, 7  
main:
    beq x10, x0, done 
    addi x5, x0, 1
    beq x10, x5, done 
    addi sp, sp -16 
    sw ra, 8(sp)
    sw x10, 0(sp)
    addi x10, x10, -1 
    jal x1, main
    lw x5, 0(sp)
    sw x10, 0(sp)
    addi x10, x5, -2
    jal x1, main
    lw x5, 8(sp)
done:
    add x10, x10, x5