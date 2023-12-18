.data
    # buffer:     .space 1      # Réserve de l'espace pour stocker le caractère
    message: .asciiz "Veuillez entrer un caractere : "
    space: .asciiz ""
.text
.globl main
main:

    # Affiche un message invitant l'utilisateur à entrer un caractère
    
    la $a0, message
    li $v0, 4
    syscall

    # Lit un caractère depuis l'entrée standard
    li $v0, 12
    syscall

    # Stocke le caractère dans le buffer
    # sb $v0, buffer

    move $a0, $v0

    # Affiche le caractère stocké dans le buffer
    li $v0, 11 
    # lb $a0, buffer
    syscall
# Terminer le programme    
li $v0, 10
syscall
.end main
