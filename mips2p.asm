# This example illustrates some floating point calculations.
# After each calculation the results are printed to the standard output.
	
	.data

val:	.float	3.0
str:	.asciiz "\n\n"

	.text
	.globl main

main:	la $t0,val		#$t0 holds address of val.
	
	li $v0,2
	lwc1 $f12,0($t0)
	syscall
	
	li $v0,4
	la $a0,str
	syscall
	
	mov.s $f0,$f12
	add.s $f1,$f12,$f0
	
	li $v0,2
	mov.s $f12,$f1
	syscall
	
	li $v0,4
	la $a0,str
	syscall
	
	li $v0,2
	mul.s $f12,$f1,$f1
	syscall
	
	