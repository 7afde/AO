.data
mesa: .asciiz "entre a: "
mesb: .asciiz "entre b: "
a: .byte 0
b: .byte 0
mes1: .asciiz "b est un diviseur de a"
mes2: .asciiz "b nest pas un diviseur de a"
v: .byte 0

.text
.globl main
.ent main
main:

la $a0, mesa
li $v0, 4
syscall

li $v0, 1
syscall

sb $v0, a

la $a0, mesb
li $v0, 4
syscall

li $v0, 1
syscall

sb $v0, b

li $t0, v

rem $t0, a, b
beq $t0, 0 do

la $a0, mes2
li $v0, 4
syscall

do:

la $a0, mes1
li $v0, 4
syscall



li $v0, 10
syscall
.end main