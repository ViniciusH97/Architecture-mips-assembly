.data
    vetor: .word 3, 2, 1, 5, 5, 0   

.text
    la $t0, vetor     # Carrega o endereço base do vetor em $t0
    li $t2, 0         

loop:
    lw $t1, ($t0)     # Carrega o valor do vetor no registrador $t1
    beq $t1, $zero, exit   # Se o valor for 0, saia do loop
    add $t2, $t2, $t1  # Adiciona o valor ao acumulador $t2
    addi $t0, $t0, 4   # Avança para o próximo elemento do vetor (4 bytes)
    j loop             # Volta ao início do loop

exit:
    move $a0, $t2 # Coloca o valor de $t2 em $a0 para impressão
    li $v0, 1    
    syscall       

    li $v0, 10    
    syscall
