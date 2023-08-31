.data

.text
    li $t0, 2 # Base
    li $t1, 3 # Expoente
    li $t2, 0
    li $t3, 1

potencia: 
    addi $t2, $t2, 1
    mul $t3, $t3, $t0 # $t1 = 1 * 2
    bne $t2, $t1, potencia
    move $t2, $t3 # $s2 = $t3
    j exit

exit: 
    li $v0, 10
    syscall