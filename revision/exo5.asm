.data
mess: .asciiz "enter one number: "
mess2: .asciiz "you entred : "
.text
.globl main
.ent main
main:

la $a0, mess
li $v0, 4
syscall


li $v0, 5
syscall

move $t0, $v0

li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall 

la $a0, mess2
li $v0, 4
syscall 

move $a0, $t0
li $v0, 1
syscall




li $v0, 10
syscall
.end main