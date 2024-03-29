#wlink main_q3 lib_ex2

.global swap
.text
swap:
    subui $sp, $sp, 4   # Allocate space on the stack
    sw $4, 0($sp)       # Save $a0 (first parameter) on the stack
    sw $5, -4($sp)      # Save $a1 (second parameter) on the stack

    lw $4, -4($sp)      # Load second parameter into $a0
    lw $5, 0($sp)       # Load first parameter into $a1

    move $6, $4         # $t2 = $a0
    move $4, $5         # $a0 = $a1
    move $5, $6         # $a1 = $t2

    addui $sp, $sp, 4   # Deallocate space on the stack
    jr $ra              # Return to caller
