.data

	num1: .asciiz "num1: "
	num2: .asciiz "num2: "
	res: .asciiz "res: "

.text

	li $v0, 4			# syscall 4 - print string
	la $a0, num1			# print label num1
	syscall				# vai
	
	li $v0, 5			# syscall 5 - read Int 
	syscall
	
	move $t0, $v0			# movimenta v0 (read Int) pra t0 (variavel temp)
	
	li $v0, 4			# syscall 4 - print string
	la $a0, num2			# print label num2
	syscall				# vai
	
	li $v0, 5			# syscall 5 - read Int
	syscall
	
	move $t1, $v0			# movimenta v0 pra t1
	
	add $t2, $t0, $t1		# t0 + t1
	
	li $v0, 4			# syscall 4 - print string
	la $a0, res			# print label res
	syscall
	
	li $v0, 1			# syscall 1 - print int
	move $a0, $t2			# movimenta t2 (res) para a0 (registrador pre-determinado p/ print int)
	syscall				# vai