.text
.globl main 
.ent main 
main:
li $t0, 65 # code ascii de A dans $t0  

debut_boucle:

# afficher_carcatere
move $a0, $t0 
li $v0, 11 
syscall

li $a0, 10   # code ascii(\n) =10 
li $v0, 11
syscall

add $t0, $t0, 1 # passer au code ascii suivant
bgt $t0, 90, sortir_boucle # test de sortie de la boucle 

b debut_boucle


sortir_boucle :


li $v0, 10 
syscall
.end main