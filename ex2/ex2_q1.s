#wlink main_q1 lib_ex2
.global	count
.text
count:
	subui	$sp, $sp, 8
	sw	$7, 1($sp)
	sw	$12, 2($sp)
	sw	$13, 3($sp)
	sw	$ra, 4($sp)
	addu	$13, $0, $0
	sw	$13, 7($sp)
	lw	$12, 8($sp)
	sgt	$13, $13, $12
	bnez	$13, L.1
	addui	$13, $0, 10000
	sw	$13, 6($sp)
	sge	$13, $12, $13
	bnez	$13, L.1
	lw	$13, 9($sp)
	sw	$13, 5($sp)
	lw	$12, 7($sp)
	sgt	$13, $12, $13
	bnez	$13, L.1
	lw	$13, 6($sp)
	lw	$12, 5($sp)
	sge	$13, $12, $13
	bnez	$13, L.1
	lw	$13, 8($sp)
	lw	$12, 9($sp)
	sgt	$13, $13, $12
	bnez	$13, L.4
	lw	$7, 8($sp)
	j	L.9
L.6:
	sw	$7, 0($sp)
	jal	writessd
	jal	delay
L.7:
	addi	$7, $7, 1
L.9:
	lw	$13, 9($sp)
	sle	$13, $7, $13
	bnez	$13, L.6
	j	L.3
L.4:
	lw	$7, 8($sp)
	j	L.13
L.10:
	sw	$7, 0($sp)
	jal	writessd
	jal	delay
L.11:
	subi	$7, $7, 1
L.13:
	lw	$13, 9($sp)
	sge	$13, $7, $13
	bnez	$13, L.10
L.3:
L.1:
	lw	$7, 1($sp)
	lw	$12, 2($sp)
	lw	$13, 3($sp)
	lw	$ra, 4($sp)
	addui	$sp, $sp, 8
	jr	$ra
