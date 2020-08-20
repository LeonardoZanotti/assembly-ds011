addi    $a0, $zero, 5		# max number to calculate the factorial is 12, because with 13 we get a 32 bit number and an overflow
jal    fact
add    $s0, $zero, $v0
j    FIM
fact:     subi $sp, $sp, 8
    sw $ra, 4($sp)
    sw $a0, 0($sp)
    slti $t0, $a0, 1
    beq $t0, $zero, L1
    addi $v0, $zero, 1
    addi $sp, $sp, 8
    jr $ra
    L1:    sub $a0, $a0, 1
        jal fact
        lw $a0, 0($sp)
    lw $ra, 4($sp)
        addi $sp, $sp, 8
        mulo $v0, $a0, $v0
        jr $ra

 

FIM:

 

# int fact(int n) {
#    if (n < 1) return 1;
#      else return (n * fact(n - 1));
#}
# fact(3) = 3 * fact(2)
# fact(2) = 2 * fact(1)
# fact(1) = 1 * fact(0)
# fact(0) = 1

# Pedro Torres