add	$s0, $zero, $zero
add	$s1, $zero, $zero
addi	$s2, $zero, 1
add	$s3, $zero, $zero
addi	$s4, $zero, 10
Loop: 	beq $s2, $s3, P1
	addi $s1, $s1, 1
	addi $s3, $s3, 2
	j End
P1:	addi $s0, $s0, 1
End:	addi $s2, $s2, 1
	bne $s2, $s4, Loop

# even and odd 'calculator'	
# Leonardo Zanotti
