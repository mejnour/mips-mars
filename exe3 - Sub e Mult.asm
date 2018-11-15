.data

	num1: .asciiz "num1: "
	num2: .asciiz "num2: "
	res1: .asciiz "res sub: "
	res2: .asciiz "res mul: "

.text

	li $v0, 4			# syscall 4 - print string
	la $a0, num1			# print label num1
	syscall				# vai
	
	li $v0, 5			# syscall 5 - read Int 
	syscall
	
	move $t0, $v0			# movimenta v0 (read Int) pra t0 (variavel temp)
	add $t3, $t0, $zero		# copia t0 pra t3 pra usar na mult
	
	li $v0, 4			# syscall 4 - print string
	la $a0, num2			# print label num2
	syscall				# vai
	
	li $v0, 5			# syscall 5 - read Int
	syscall
	
	move $t1, $v0			# movimenta v0 pra t1
	add $t4, $t0, $zero		# copia t0 pra t4 pra usar na mult
	
	sub $t2, $t0, $t1		# t0 + t1
	
	li $v0, 4			# syscall 4 - print string
	la $a0, res1			# print label res
	syscall
	
	li $v0, 1			# syscall 1 - print int
	move $a0, $t2			# movimenta t2 (res) para a0 (registrador pre-determinado p/ print int)
	syscall				# vai
	
	mult $t3, $t4			# multiplica t3 e t4
	mflo $t5			# salva t5 em um registrador de 65bit low
	
	li $v0, 4			#
	la $a0, res2			# printa res2
	syscall				#
	
	li $v0, 1			#
	move $a0, $t5			# printa t5
	syscall				#