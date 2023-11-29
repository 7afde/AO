
.data
x: .word 0
y: .word 0
perim: .word 0
superf: .word 0
.text
.globl main
.ent main
main:

# *******************lire x 

li $v0, 5
syscall 

sw $v0, x

#**********************************saut de ligne 
li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall 

# *******************lire y

li $v0, 5
syscall 

sw $v0, y

#**********************************saut de ligne 
li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall 

#************************ calculer la superficie x*y

lw $t1, x
lw $t2, y

mul $t0, $t1, $t2

sw $t0, superf

#************************ calculer le perimetre (x+y)*2

lw $t1, x
lw $t2, y

add $t0, $t1, $t2
mul $t0, $t0, 2

sw $t0, perim

#************************ Afficher la superficie 
lw $a0, superf
li $v0, 1
syscall 

#**********************************saut de ligne 
li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall

#************************ Afficher le perim
lw $a0, perim
li $v0, 1
syscall 


li $v0, 10 
syscall 
.end main
