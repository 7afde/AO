.data
save: .space 1     # pour sauvegarder le caractere saisi
code: .asciiz "\n"

.text
.globl main
.ent main
main:

li $v0, 12        # 12 pour lire le caractere
syscall

sb $v0, save   # sauvegarder le caractere

li $a0, 0x0a   # code ascii(\n) =10 
li $v0, 11     
syscall 


lb $a0, save
sub $t0, $a0, 32  # any letter - 32 = LETTER

move $a0, $t0
li $v0, 11        # 11 pour afficher une caractere
syscall



li $v0, 10
syscall
.end main