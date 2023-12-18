.data
vecteur: .word 0, 0, 0, 0, 0


.globl main
.ent main
main:

la $t0, vecteur
li $t1, 1

debut:

li $v0, 5
syscall

sw $v0, ($t0)
add $t0, $t0, 4

add $t1, $t1, 1

bgt $t1, 5,suite

j debut

suite:

li $a0, 10
li $v0, 11
syscall

la $t0, vecteur
li $t1 , 1














li $v0, 10
syscall
.end main