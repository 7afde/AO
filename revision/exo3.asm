.data
car: .asciiz ""
message: .asciiz "entre un caracter : "
.text
.globl main
.ent main
main: 

la $a0, message
li $v0, 4
syscall

li $v0, 12
syscall

sub $t0, $v0, 32
sb $t0, car

li $a0, 10   # code ascii(\n) =10 
li $v0, 11     
syscall 


lb $a0, car
li $v0, 11
syscall






li $v0 10
syscall
.end main