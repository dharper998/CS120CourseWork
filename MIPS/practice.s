.data
str: .space 6

.text
main: la $s0, str
      j loop

loop:
      add $a0, $0, $s0
      addi $a1, $0, 6
      addi $v0, $0, 8
      syscall
      lw   $s1, 0($s0)
      beq  $s1, $0, done
      j loop

done: addi $v0, $0, 10
      syscall
