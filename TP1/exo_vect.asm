.data
msg_a: .asciiz "enter a: "
msg_b: .asciiz "enter b: "

x: .word 0
y: .word 0


.text
.globl main
.ent main
main:

la $t1, msg_a   
li $v0, 4      
syscall        

li $v0, 5      
syscall        

sw $v0, x

li $v0, 10
li $v0, 11
syscall


la $t1, msg_b   
li $v0, 4       
syscall        

li $v0, 5       
syscall        

sw $v0, y    

lw $t0, ,x
lw $t1, y




bgt $t0, $t1, affiche
move $a0, $t1
li $v0, 1
syscall
j sortir

affiche:
move $a0, $t0
li $v0, 1
syscall


sortir:
li $v0, 10
syscall
.end main