.data
Str1: .asciiz "Enter first number"
Str2: .asciiz "Enter second number"
Str3: .asciiz "Enter operation +,-,*,/"

.text
main:
#print string "Enter first number"
li $v0, 4 # prepare string block
la $a0 Str1 #load String
syscall


#read integer into $s0
li $v0, 5
syscall
move $s0, $v0

#print string "Enter second number"
li $v0, 4 # prepare string block
la $a0 Str2 #load String
syscall

#read integer into $s1
li $v0, 5
syscall
move $s1, $v0

#print string "Enter operation"
li $v0, 4 # prepare string block
la $a0 Str3 #load String
syscall
#read char into $s2 +(43), - (45) , *(42), /(47)
#if '+' goto ADD
beq $s2, 43, ADD

#if '-' goto SUB
beq $s2, 45, SUB

#if '*' goto MULT
beq $s2, 42, MULT

#if '/' goto DIV
beq $s2, 47, DIV


ADD:
#$s0 add $s1 into $s2
add $s2, $s0,$s1

#print integer stored in $s2
li $v0, 1
move $a0,$s2
syscall

#END
li $v0, 10
syscall

SUB:
#$s0 sub $s1 into $s2
sub $s2, $s0, $s1

#print integer stored in $s2
li $v0, 1
move $a0,$s2
syscall

#END
li $v0, 10
syscall

MULT:
#$s0 MULT $s1 into $s2
mul $s2, $s0, $s1

#print integer stored in $s2
li $v0, 1
move $a0,$s2
syscall

#END
li $v0, 10
syscall

#ENd
DIV:
#$s0 DIV $s1 into $s2
div $s2, $s0, $1

#print integer stored in $s2
li $v0, 1
move $a0,$s2
syscall

#END
li $v0, 10
syscall