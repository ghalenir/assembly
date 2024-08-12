.data
A: .word 9
B: .word 7
C: .space 4

.text
main:

la $t0, A # loads the memory address of A into $t0
lw $s5, 0($t0) # loads value stored at A into $s5

la $t1, B #loads the memory address of B into $s6
lw $s6, 0($t1) # loads value sores at B into $t1

#add A and B and place sum into $s7
add $s7 $s5, $s6

#save $s7 into memory at c
la $t2, C
sw $s7 0($t2)