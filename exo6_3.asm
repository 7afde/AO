#******************************************************************************************
#SOLUTION AVEC AFFICHAGE DES INVITATIONS A TAPER X et Y, ...
#******************************************************************************************

.data
x: .word 0
y: .word 0
perim: .word 0
superf: .word 0
mess_x: .asciiz "tapez un entier x svp:"
mess_y: .asciiz "tapez un entier y svp:"
mess_superf: .asciiz "La superficie ="
mess_perim:  .asciiz "Le perimetre ="
.text
.globl main
.ent main
main:

# *******************Invitation à lire x 
la $a0, mess_x 
li $v0, 4 
syscall 

# *******************lire x 

li $v0, 5
syscall 

sw $v0, x

#**********************************saut de ligne 
li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall 

# *******************Invitation à lire y 
la $a0, mess_y
li $v0, 4 
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



#************************ Afficher la superficie apres "La superficie ="
la $a0, mess_superf
li $v0, 4 
syscall

lw $a0, superf
li $v0, 1
syscall 

#**********************************saut de ligne 
li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall

#************************ Afficher le perim apres "Le perimetre ="
la $a0, mess_perim
li $v0, 4 
syscall

lw $a0, perim
li $v0, 1
syscall 


li $v0, 10 
syscall 
.end main
