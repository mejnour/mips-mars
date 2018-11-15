.data

	Mychar: .byte 'p'			# lembrar das aspas simples

.text

	li $v0, 4
	la $a0, Mychar
	syscall