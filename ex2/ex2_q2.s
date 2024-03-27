.global main 
.text
main:
    subui $sp, $sp, 7   # 
    sw $ra, 4($sp)      # save to $ra
    jal readswitches    # Call readswitches to read the switch values into $1 only 8 
    addu $13, $0, $1    #readswitchs moved from register $1 to $13
    addu $7, $0, $13    #creates a duplicate of $13 into $7
    srli $13, $7, 8     #move $7 to the right by 8 bits and store in $13
    slli $7, $7, 8      #move $7 to the left by 8 bits and store in $7
    add $7, $13, $7    #combine both $13(left is 0s) and $7(right is 0s) store in $13
    
    jal count           # Call count to count the number of switches that are on
    lw $ra, 4($sp)
    jr $ra

        
    