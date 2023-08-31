.data
    # utilizei os mesmos valores de a e b para confirmar que o cálculo da equação está correto
    # x = (a + 2b)^3
.text
    li $s1, 2 # a
    li $s2, 5 # b
    li $t0, 1

    mul $s2, $s2, 2   # $s2 = 2 * b
    add $s1, $s1, $s2 # $s1 = 2 + $s2(10)
    move $s2, $s1 # $s2 = 12

cubo:
    mul $s2, $s2, $s1 # $s2 = $s2 * 12
    addi $t0, $t0, 1
    bne $t0, 3, cubo

    j exit

exit:
    li $v0, 10
    syscall