#wlink main_q3 lib_ex2

.text
.global print 



# I think there is  a problem with my stack pointer somewhere. 
# couldn't find it, and sorry I didn't comment, please let me know if that can 
#improve my grade and will get it done. very sorry about this. was an azaming practical. 

print: 

    subui $sp, $sp, 6
    lw $1, 5($sp)
    sw $ra, 4($sp)
    sw $10, 3($sp)
    sw $12, 2($sp)
    addui $8, $0, 10000
    beqz $1, ifZeros
    add $12, $0 ,$0

loop:
    beqz $8, exit
    addu $5, $0, $0
    div $5, $1, $8
    remi $5, $5, 10 
    add $12, $12, $5
    beqz $12, pad 
    addi $5, $5, 48

output: 
    sw $5, 0($sp)
    jal putc 
    divi $8, $8, 10
    j loop 

exit: 
    lw $10, 2($sp)
    lw $12, 3($sp)
    lw $ra, 4($sp)
    addui $sp, $sp, 6 
    jr $ra

registers: 
    lw $8, 1($sp) 
    lw $12, 2($sp)
    lw $ra, 4($sp)
    addui $sp, $sp, 5
    jr $ra
    
pad: 
    addi $5, $0, 32
    j output

ifZeros: 
    addi $5, $0, 32 
    sw $5, 0($sp) 
    jal putc
    jal putc
    jal putc
    jal putc
    addi $5, $0, 48 lw $1, 5($sp)
    sw $ra, 4($sp)
    sw $10, 3($sp)
    sw $12, 2($sp)
    addui $8, $0, 10000
    beqz $1, ifZeros
    add $12, $0 ,$0

loop:
    beqz $8, exit
    sw $5, 0($sp)
    jal putc
    j exit










