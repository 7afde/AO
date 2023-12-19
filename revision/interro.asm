.data
msg1: .asciiz "Le résultat est:"
x: .word 0
y: .word 0

.text
.globl main
.ent main
main:
li $t0, 0
li $v0, 5
syscall

sw $v0, x
li $v0, 5
syscall

sw $a0, y
lw $a1, y
lw $a0, x

l:
beq $a1, 0, h
add $t0, $t0, $a0
sub $a1, $a1, 1
j l
h:
add $t0, $t0, 100
la $a0, msg1
li $v0, 4
syscall
move $a0, $t0
li $v0, 1
syscall


li $v0, 10
syscall
.end main