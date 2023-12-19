.data
vecteur: .word 0, 0, 0, 0, 0


.globl main
.ent main
main:

la $t0, vecteur
li $t1, 0

boucle_1:

li $v0, 5
syscall

sw $v0, ($t0)

add $t0, $t0, 4

add $t1, $t1, 1

beq $t1, 5 sortier

j boucle1

sortier:

li $a0, 10
li $v0, 11
syscall

la $t0, vecteur
li $t1, 0

boucle_2:


move $a0, $t0
li $v0, 1
syscall

add $t0, $t0, 4
add $t1, $t1, 1

beq $t1, 5 sort

j boucle_2

sort:












li $v0, 10
syscall
.end main