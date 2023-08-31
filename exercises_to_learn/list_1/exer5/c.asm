.data
    # for (i=0; i<5 ;i++) {
    #    a=a+1;
    #    b=b+2;
    #}

.text

    li $s0, 0 # i = 0
    li $s1, 6 # a
    li $s2, 8 # b

loop: 
    addi $s1, $s1, 1
    addi $s2, $s2, 2
    addi $s0, $s0, 1
bne $s0, 5, loop

exit:
    li $v0, 10
    syscall
