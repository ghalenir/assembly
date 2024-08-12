.data
A: .word 8
B: .word 3
C: .space 4

.text
main:
#load A into $s1
la $t0, A # Load address of A into $s1
lw $s1, 0($t0)

#load B into $s2
la $t0, B
lw $s2, 0($t0)

#if A < B then goto WRITEB:
blt $s1, $s2, WRITEB

#write A to memory at C
la $t0, C # $t0 = address of C
sw $s1,0($t0)  #write to Memory A = $s1

#goto END:
J END


WRITEB:
#write B to memory at C
la $t0, C
lw $s2, 0($t0)

#goto END:
J END

END:
#exit program
li $v0, 10 #exit the system 
syscall

 