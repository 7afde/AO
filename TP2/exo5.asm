.data
message: .asciiz "Entere un  entier "
vect: .byte 0, 0, 0, 0, 0 
somme: .word 0
result: .asciiz "LA somme : "
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

sb $v0 , ($t0)

add $t0, $t0, 1

add $t1, $t1, 1

bgt $t1, 5, sortir_boucle # test de sortie de la boucle
b debut_boucle

sortir_boucle:

la $t0, vect
li $t1 , 1
li $t3, 0
debut:

lb  $t2 , ($t0)
add $t3, $t3, $t2

add $t0, $t0, 1

add $t1, $t1 1

bgt $t1, 5, sortir      # test de sortie de la boucle
b debut

sortir:
la $a0, result
li $v0, 4
syscall

sw $t3, somme
lw $a0, somme
li $v0, 1
syscall


li $v0, 10
syscall
.end main