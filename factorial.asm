addi    $a0, $zero, 5
jal    fact
add    $s0, $zero, $v0
j    FIM
fact:     addi $v0, $zero, 1
    addi $t0, $zero, 2
   LOOP: slt  $t1, $a0, $t0
        bne  $t1, $zero, FIML
    mulo  $v0, $v0, $t0		# mul with overflow verification
    addi $t0, $t0, 1
    j    LOOP
  FIML: jr $ra
FIM:
# def factorial (n):
#    result = 1
#    i = 2
#    while (i<=n):
#        result *= i
#        i = i + 1
#    return result

 

# n = $a0
# i = $t0
# result = $v0
# div $zero, $zero, $zero

# Pedro Torres