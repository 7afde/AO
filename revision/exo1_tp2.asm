.data


.text
.globl main
.ent main
main:


li $t0, 65

boucle:

move $a0, $t0
li $v0, 11
syscall

add $t0, $t0, 1

li $a0, 32
li $v0, 11
syscall

beq $t0, 91 sortier

j boucle

sortier:

li $v0, 10
syscall
.end main