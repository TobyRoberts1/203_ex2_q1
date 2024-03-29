#wlink ex2_q1 lib_ex2
.global main 
.text
main:
   
    subui $sp, $sp, 5
    sw	$7, 2($sp)
	sw	$13, 3($sp)
	sw	$ra, 4($sp)

	jal	readswitches

    addu $13, $0, $1
    addu $7, $0, $1
    andi $13, $13, 255
    sw $13, 0($sp)
    srli $13, $7, 8 
    sw $13, 1($sp)
    jal count

    lw	$7, 2($sp)
	lw	$13, 3($sp)
	lw	$ra, 4($sp)
    addui $sp, $sp, 5
    jr $ra

