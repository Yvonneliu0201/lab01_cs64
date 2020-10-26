# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here

#input for a, then b, then c
li $v0, 5
syscall

move $t0, $v0

li $v0, 5
syscall

move $t1, $v0

li $v0, 5
syscall

move $t2, $v0

add $t0, $t0, $t1
sll $t0, $t0, 2
li $t1, -3
mult $t2, $t1
mflo $t2
add $t0, $t0, $t2

li $v0, 1
move $a0, $t0
syscall

exit:
	# Exit
	li $v0, 10
	syscall

