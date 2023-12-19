.data
mess: .asciiz "Entre mun de 2 chiffres : "
num: .space 3

.text
.globl main
.ent main
main:

la $a0, mess
li $v0, 4
syscall

la $a0, num
li $a1, 3
li $v0, 8
syscall


li $a0, 10
li $v0, 11
syscall

la $a0, num
li $v0, 4
syscall





li $v0, 10
syscall
.end main 