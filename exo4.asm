
.data
chaine: .space 22  #  20 (taille max de la chaine) + 2 bytes (code ascii 10 de entr�e  et le                                                                               #code ascii 0 de NULL) 

.text
.globl main
.ent main
main:

# *******************lire la chaine
la $a0, chaine
li $a1, 22
li $v0, 8
syscall 


#**********************************saut de ligne 
li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall 

#************************ Affichage de la chaine
la $a0, chaine
li $v0, 4
syscall 



li $v0, 10 
syscall 
.end main
