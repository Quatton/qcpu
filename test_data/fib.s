addi a0 zero 10
addi t0 zero 1

fib:
    addi a1 zero 1
    addi a2 zero 1
.loop:
    beq a0 t0 .end
    add a3 a1 a2
    add a1 zero a2
    add a2 zero a3
    addi a0 a0 -1
    jal ra .loop

.end:
    add a0 zero a1