.data
message: .asciiz "Entere un  entier "
vect: .word 0, 0, 0, 0, 0 

.text
.globl main
.ent main
main:


la $t0 , vect
li $t1 , 1

debut_boucle:

la $a0 , message
li $v0 , 4
syscall

li $v0, 5
syscall

sw $v0 , ($t0)

add $t0, $t0, 4

add $t1, $t1, 1

bgt $t1, 5, sortir_boucle # test de sortie de la boucle
b debut_boucle

sortir_boucle:

la $t0, vect
li $t1 , 1
debut:

lw  $a0 , ($t0)
li $v0 , 1
syscall

li $a0 , 32   # new espace code
li $v0 , 11   # new espace code
syscall       # new espace code


add $t0, $t0, 4


add $t1, $t1, 1
bgt $t1, 5, sortir # test de sortie de la boucle
b debut

sortir:

li $v0, 10
syscall
.end main