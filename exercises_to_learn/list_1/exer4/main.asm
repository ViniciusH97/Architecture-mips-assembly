.data
    #if (a==b)
    #a=a+1;
    #else
    #b=b+1;

.text
    li $s0, 3   # a
    li $s1, 3   # b

    beq $s0, $s1, igual
    bne $s0, $s1, nao_igual

igual:
    addi $s0, $s0, 1
    j exit

nao_igual:
    addi $s1, $s1, 1

exit:
    li $v0, 10
    syscall
