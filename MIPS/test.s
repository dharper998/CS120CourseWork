.data
num: .word 7
str: .byte 'a'
array: .space 40


.text
main: addi $t0, $0, 5
      addi $t1, $0, 0x3
      add $t2, $t0, $t1
