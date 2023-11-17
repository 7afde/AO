.data
var: .asciiz ""
.text
.globl main
.ent main
main:

li $v0, 12
syscall

move $a0, $v0
sub $t0, $a0, 32

sw $t0, var
lw $a0, var
li $v0, 11
syscall



li $v0, 10
syscall
.end main