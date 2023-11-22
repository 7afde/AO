.data
message: .ascii "Abdelhamid MEHRI University\n"
         .ascii ".......NTIC......\n"
         .asciiz "Year :"
nomber: .word 2022

.text
.globl main
.ent main
main:
la $a0, message 
li $v0, 4
syscall

lw $a0, nomber
li $v0, 1
syscall

li $v0, 10
syscall
.end main

