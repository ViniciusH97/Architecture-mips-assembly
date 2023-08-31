
li $s2, 0 # $s2 é zero

beq $s2, $zero, label # vá para label se $s2 == 0
j exit

label:

    addi $s2, $s2, 1 # soma ++1 no $t1

exit:
    li $v0, 10  # Encerrar
    syscall	
