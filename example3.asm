.data
String1: .asciiz "Fried Chicken"

.text 
main:
 li $v0, 4 # load 4 code for print string
 la $a0, String1 # load address of the sring1
 syscall
 