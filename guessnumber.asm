.data
str1: .asciiz "Guess a Number "
str2: .asciiz "Congratulations! "
str3: .asciiz "Wrong! "
Secret: .word 42

.text
main:
#load secret into $s0
la $t0, Secret #$t0=address of secret
lw $s0, 0($t0) # $s0= secret = 42

#Print "Guss a number"
li $v0 4 # $v0=4 (syscode for print string
la $a0, str1 # $a0 = address of str
syscall

#capture input into $s1
li $v0, 5 #sets $v0=5 syscode for read int
syscall #Captures input into $v0
move $s1, $v0 # $s1 = contents of $v0

# if number == input goto win
beq $s0, $s1, WIN

#print "Wrong1"
li $v0, 4 #$v0=4 (syscode for print string)
la $a0, str3
syscall

#Exit the program
li $v0, 10
syscall

WIN:
#print congratulations
li $v0, 4
la, $a0, str2
syscall

#exit the program
li $v0, 10
syscall
