.data
    # ) if (g > h)
    #   g = g + h;
    #   else
    #   g = g – h;
.text

    li $s0, 20 # g
    li $s1, 12 # h

    bgt $s0, $s1, maior
    ble $s0, $s1, senao
    j exit
    
maior:
    add $s0, $s0, $s1
    j exit

senao:  
    sub $s0, $s0, $s1

exit: 
    li $v0, 10
    syscall
