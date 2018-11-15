.data

	pi: 	.double 7.202
	zero:	.double 0.0

.text

	ldc1	$f2, pi
	ldc1	$f0, zero

	li	$v0, 3
	add.d	$f12, $f2, $f0
	syscall