.data

.text

    li $s0, 6    # n (quantidade de sequências fibonacci)
    li $t1, 1    # registrador que irá receber o resultado fibonacci
    li $t2, 2    # registrador que irá receber a posição do valor (começa em 2)
    li $t3, 1    # armazena o valor anterior (inicia como 1)
    beq $s0, 0, exit   # Se n for 0, sair imediatamente
    beq $s0, 1, exit   # Se n for 1, sair imediatamente

sequencia:

    add $s1, $t1, $t3   # Somar os dois últimos valores para obter o próximo valor da sequência
    move $t3, $t1       # Atualizar o valor anterior com o valor atual
    move $t1, $s1       # Atualizar o valor atual com o próximo valor da sequência
    addi $t2, $t2, 1    # contador

    bne $t2, $s0, sequencia   # Se o contador não atingiu n, repetir a sequência
    j exit                    

exit:
    li $v0, 10       # sair do programa
    syscall
