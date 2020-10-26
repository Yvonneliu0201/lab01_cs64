# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here

first: .asciiz "Enter an integer:\n"
second: .asciiz "Hello Pandemic World!\n"
third: .asciiz "The magic number is "
fourth: .asciiz "!!!\n"

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here
#prints Enter an int
li $v0, 4
la $a0, first
syscall

li $v0, 5
syscall

move $t0, $v0

#prints the rest
li $v0, 4
la $a0, second
syscall

la $a0, third
syscall

li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, fourth
syscall


exit:
	# Exit
	li $v0, 10
	syscall

