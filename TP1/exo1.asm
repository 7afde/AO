
.data
# a: .ascii "adgdgdddh"

.text
.globl main
.ent main
main:

# lb to store just the first byte of the caractere
# lb $a0, a
li $a0, 97
li $v0, 11
syscall




li $v0, 10
syscall
.end main