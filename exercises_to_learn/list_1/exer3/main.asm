.data    
    # a^3+6a^2b+12ab^2+8b^3
.text
    li $s0, 2 # a
    li $s1, 5 # b
    li $t0, 0 
    li $t1, 0 

    mul $t0, $s0, $s0 # $t0 = 2 * 2
    mul $t0, $t0, $s0 # $t0 = 4 * 2
    
    mul $t1, $s0, $s0 # $t1 = a * a == 2^2
    mul $t1, $t1, 6   # $t1 = a^2 * 6 == 6a^2
    mul $t1, $t1, $s1 # $t1 = 24 * 5
    add $t0, $t0, $t1 # $t0 = 8 + 120
    mul $t1, $s1, $s1 # $t1 = b * b
    mul $t1, $t1, $s0 # $t1 = 25 * 2

    mul $t1, $t1, 12 # $t1 = 12 * 50
    add $t0, $t0, $t1 # $t0 = 128 + 600
    mul $t1, $s1, $s1 # $t1 = 5 * 5
    mul $t1, $t1, $s1 # $t1 = 25 * 5
    mul $t1, $t1, 8 # $t1 = 125 * 8

    add $s2, $t0, $t1 # Resultado
    move $a0, $s2

    li $v0, 1
    la $a0, ($s2)
    syscall

Exit: 
    li $v0, 10         # Código de saída do programa
    syscall
