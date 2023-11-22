.data
input: .asciiz "entre une chaine (max 20 caracter) :"
save: .space 21
output: .asciiz "you entred: "

.text
.globl main
main:

la $a0, input       # load address of string into $a0 
li $v0, 4           # system call code for print_string
syscall 

la $a0, save
li $a1, 20          # maximum length of the string to read
li $v0, 8           # system call code for read_string
syscall

la $a0, output
li $v0, 4           # system call code for print_string
syscall

la $a0, save
li $v0, 5           # system call code for print_string
syscall

li $v0, 10
syscall
.end main

