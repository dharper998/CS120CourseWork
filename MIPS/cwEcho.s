.data

exit: .asciiz "goodbye"
str: .space 80

.text
main: addi $t1, $0, 0x71

loop: addi $v0, $0, 8
      la $a0, str
      addi $a1, $0, 80
      syscall
      lb $t0, str
      beq $t0, $t1, done
      addi $v0, $0, 4
      syscall
      j loop

done: la $a0, exit
      li $v0, 4
      syscall
      li $v0, 10
      syscall
