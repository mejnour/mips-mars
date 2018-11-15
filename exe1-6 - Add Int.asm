.data
	
	num1:	.word	20
	num2:	.word	5

.text

	lw	$t0, num1($zero)
	lw	$t1, num2($zero)
	
	add	$t3, $t0, $t1
	
	li	$v0, 1
	move	$a0, $t3
	syscall