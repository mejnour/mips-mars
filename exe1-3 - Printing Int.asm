.data

	idade:	.word	25
	
.text

	li $v0, 1
	lw $a0, idade			# load Word, not address
	syscall