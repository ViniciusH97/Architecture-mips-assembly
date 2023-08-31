.data
    #if (g >= h)
    #    g = g + 1;
    #else
    #    h = h – 1;
.text
    li $s0, 10 # g
    li $s1, 20 # h

    bge $s0, $s1, maior_igual
    blt $s0, $s1, senao
    j exit
maior_igual:
    addi $s0, $s0, 1
    j exit

senao:
    subi $s1, $s1, 1
    j exit
exit:
    li $v0, 10
    syscall