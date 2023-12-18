.data

.text
.globl main
.ent main
main:

li $a0, 97
li $v0, 11
syscall


li $v0, 10
syscall
.end main