.data
input: .asciiz "entre un entier: "
save: .space 4
output: .asciiz "the number you entred is: "
.text
.globl main
main:

la $a0, input # load the address of the string into a register
li $v0, 4 # system call code for print_string
syscall 

# get an integer from user and save it in memory

li $v0, 5 # system call code for read_int
syscall 
sw $v0, save # store the value returned by syscall to memory location pointed at by $t1

la $a0, output
li $v0, 4           # system call code for print_string
syscall

lw $a0, save
li $v0, 1           # system call code for integer
syscall

li $v0, 10
syscall
.end main