.data
Str1: .asciiz "Enter First Name: "
Str2: .asciiz "Enter Second Number: "
Str3: .asciiz "The Sum is: "

.text
main:
 li $v0, 4  # $v0=4 (syscode to print string)
 la $a0, Str1 #loads the
 syscall
 
li $v0, 5 # $v0=5 sys code to read integer
syscall
move $s0, $v0 # $s0 - Contents of $v0

#print string "Enter second number"
li $v0, 4
la $a0, Str2
syscall

#read integer into $s1
li $v0, 5
syscall
move $s1, $v0

#Add $s0 and $s1 into $s2
add $s2, $s0, $s1

#print string "The Sum is"
li $v0, 4
la $a0, Str3
syscall

#print integer stored in $s2
li $v0, 1 #v0=1 syscode for print integer
move $a0, $s2 #$a0 = contents of $s2
syscall
