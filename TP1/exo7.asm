.data
    prompt:      .asciiz "Entrez un nombre entier naturel (max 2 chiffres) : "
    output_msg:  .asciiz "Vous avez entré le nombre : "
    newline:     .asciiz "\n"

.text
.globl main
.ent main
main:

    # Affiche le message invitant à entrer un nombre
    li $v0, 4
    la $a0, prompt
    syscall

    # Lit un nombre entier depuis l'entrée standard
    li $v0, 5
    syscall
    move $t0, $v0  # Stocke le nombre dans $t0

    # Affiche une nouvelle ligne
    li $v0, 4
    la $a0, newline
    syscall

    # Affiche le message indiquant que le nombre a été saisi
    li $v0, 4
    la $a0, output_msg
    syscall

    # Affiche le nombre saisi
    li $v0, 1
    move $a0, $t0
    syscall

    

# Terminer le programme
li $v0, 10
syscall
.end main
