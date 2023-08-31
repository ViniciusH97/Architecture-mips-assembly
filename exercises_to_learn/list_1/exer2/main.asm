.data

.text
    li $s0, 6 # a
    li $s1, 4 # b
    li $s2, 9 # c
    li $s3, 2 # d
    li $t0, 0
    li $t1, 0
    
    # Equação: a = {d – [b + (a - b) – c] + a } + d.

    move $t0, $s0
    move $t1, $s3
    sub $s0, $s0, $s1 # a = (a - b)
    add $s1, $s1, $s0 # b = a + b
    sub $s1, $s1, $s2 # [b = b - c]
    sub $s3, $s3, $s1 # d = d - b
    add $s3, $s3, $t0 # d = d + a
    add $s3, $s3, $t1
    
exit:
    li $v0, 10
    syscall
