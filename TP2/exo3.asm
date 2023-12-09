.data
puiss: .word 0

msg: .asciiz "Enter number : "

.text
.globl main
.ent main
main:

debut:

la $a0, msg
li $v0, 4
syscall

li $v0, 5
syscall

blt $v0, 9, suite_1
j debut

suite_1:

li $t0, 0       # $t0 compteur
li $t1, 1       # $t1 resultat de la puissance

debut2:

add $t0, $t0, 1
mul $t1, $t0, 1
beq $t0, 10, suite_2
j debut2


suite_2:


sw $t1, puiss 

li $a0, 10
li $v0, 11
syscall

lw $a0, puiss
li $v0, 1
syscall



li $v0, 10 
syscall 
.end main