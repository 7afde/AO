instructions:

1-Load Word (lw):

Example: Load a value from memory into a register.

lw $t0, 4($s0)

This instruction loads a 32-bit word from the memory address in $s0 + 4 into register $t0.

-Store Word (sw):

Example: Store a value from a register into memory.


sw $t0, 8($s1)
This instruction stores the contents of register $t0 into the memory address in $s1 + 8.

-Load Immediate (li):

Example: Load an immediate value into a register.


li $t1, 42
This instruction loads the immediate value 42 into register $t1.

-Add (add) and Add Immediate (addi):

Example: Add two registers.



add $t2, $s0, $s1

This instruction adds the contents of registers $s0 and $s1 and stores the result in register $t2.

Example: Add an immediate value to a register.



addi $t3, $t3, 5
This instruction adds the immediate value 5 to the contents of register $t3 and stores the result back in $t3.

-Subtract (sub) and Subtract Immediate (subi):

Example: Subtract one register from another.



sub $t4, $t2, $t1
This instruction subtracts the contents of register $t1 from $t2 and stores the result in register $t4.

Example: Subtract an immediate value from a register.

 
subi $t5, $t5, 3
This instruction subtracts the immediate value 3 from the contents of register $t5 and stores the result back in $t5.

-Multiply (mul) and Divide (div):

Example: Multiply two registers.

 
mul $t6, $s2, $s3
This instruction multiplies the contents of registers $s2 and $s3 and stores the result in register $t6.

Example: Divide one register by another.
  
div $t7, $t7, $s4
This instruction divides the contents of register $t7 by the contents of $s4 and stores the quotient in $t7 and the remainder in $s4.

-Branch if Equal (beq):

Example: Branch to a target label if two registers are equal.
 
beq $s5, $s6, target_label
This instruction checks if the contents of registers $s5 and $s6 are equal. If true, it branches to the target_label.
Branch if Not Equal (bne):

Example: Branch to a target label if two registers are not equal.
 
bne $s7, $t0, another_label
This instruction checks if the contents of registers $s7 and $t0 are not equal. If true, it branches to another_label.
Branch on Greater Than (bgt):

Example: Branch to a target label if one register is greater than another.
 
bgt $t8, $t9, some_label
This instruction checks if the contents of register $t8 are greater than the contents of $t9. If true, it branches to some_label.
Branch on Greater Than or Equal (bge):

Example: Branch to a target label if one register is greater than or equal to another.
 
bge $s0, $s1, loop_start
This instruction checks if the contents of register $s0 are greater than or equal to the contents of $s1. If true, it branches to loop_start.
Branch on Less Than (blt):

Example: Branch to a target label if one register is less than another.
 
blt $t0, $t1, end_loop
This instruction checks if the contents of register $t0 are less than the contents of $t1. If true, it branches to end_loop.
Branch on Less Than or Equal (ble):

Example: Branch to a target label if one register is less than or equal to another.
 
ble $t2, $t3, some_destination
This instruction checks if the contents of register $t2 are less than or equal to the contents of $t3. If true, it branches to some_destination.
Jump (j):

Example: Unconditionally jump to a target label.
 
j final_destination
This instruction unconditionally jumps to the final_destination label.
System Call (syscall):

Example: Print the contents of a register.
 
li $v0, 1           # Load system call code for printing integer
move $a0, $t2        # Move the value to be printed into $a0
syscall
This code sets up the registers and system call code to print the integer value stored in register $t2.
Move (move):

Example: Copy the contents of one register into another.
 
move $t3, $s3
This instruction copies the contents of register $s3 into register $t3.
Shift Left Logical (sll) and Shift Right Logical (srl):

Example: Shift the bits in a register to the left by a specified amount.

 
sll $t4, $t4, 2
This instruction shifts the bits in register $t4 to the left by 2 positions.


srl $t5, $t5, 3
This instruction shifts the bits in register $t5 to the right by 3 positions.

Load Address (la):

Example: Load the address of a label into a register.
 
la $t6, my_array
This instruction loads the address of the label my_array into register $t6.
Branch and Link (jal):

Example: Jump to a target label and save the return address.
 
jal subroutine
This instruction jumps to the subroutine label and saves the return address in the link register ($ra).