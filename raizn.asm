addi $s0, $zero, 3021	# parte inteira
addi $s1, $zero, 59	# parte decimal
addi $s2, $zero, -1	# raiz de 123.37 é aproximadamente sqrt(123).sqrt(37)
addi $s3, $zero, 2	# grau da raiz
add $s7, $zero, $zero	
addi $t2, $zero, 2
Loop:		addi $s2, $s2, 1
		addi $s4, $zero, 2
		mulo $t1, $s2, $s2
raizLoop:	beq $s4, $s3, fimLoop
		mulo $t1, $t1, $s2
		addi $s4, $s4, 1
		j raizLoop
fimLoop:	slt $s5, $s0, $t1
		beq $s5, $zero, Loop
		subi $t1, $s2, 1
		addi $s7, $s7, 1
		beq $s7, $t2, fim
		add $s0, $zero, $s1
		add $s1, $zero, $t1
		addi $s2, $zero, -1
		j Loop
fim:
		
# raiz de 121.36 = 11.06 aproximadamente
# raiz de 321.59 = 17.7 aproximadamente
# raiz de 3021.59 = 54.7 aproximadamente
# Calculadora de raízes de ponto flutuante aproximadas
		
	
	
