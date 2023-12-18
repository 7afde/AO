.data
mess: .asciiz "entre caracters max 20 car :  "
max: .space 22
.text
.globl main
.ent main
main:

la $a0, mess
li $v0, 4
syscall

la $a0, max
li $a1, 20
li $v0, 8
syscall

li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall 


la $a0, max
li $v0, 4
syscall





li $v0, 11
syscall
.end main