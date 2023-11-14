.data
wnum1: .word 200
wnum2: .word 200
wres1: .word 200
wres2: .word 200
wres3: .word 200
hres: .half 0
bres: .byte 0
bnum1: .byte 200
bnum2: .byte 200
hnum1: .half 200
hnum2: .half 200

.text
.globl main
.ent main
main:

lw $t0, wnum1
lw $t1, wnum2
add $t2, $t0, $t1
sw $t2, wres1
lw $a0, wres1
li $v0, 1
syscall

mul $t2, $t0, $t1
sw $t2, wnum2
lw $a0, wnum2
li $v0, 1
syscall

rem $t2, $t0, $t1
sw $t2, wres3
lw $a0, wres3
li $v0, 1
syscall

lw $t3, hnum1
lw $t4, hnum2
mul $t2, $t3, $t4
sh $t2, hres
lw $a0, hres
li $v0, 1
syscall

lw $t5, bnum1
lw $t6, bnum2
div $t2, $t5, $t6
sb $t2, bres
lw $a0, bres
li $v0, 1
syscall

li $v0, 10
syscall
.end main