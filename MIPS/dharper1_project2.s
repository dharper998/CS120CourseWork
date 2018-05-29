.data
  firstQuestion: .asciiz "Please enter first name: "
  lastQuestion: .asciiz "Please enter last name: "
  first: .space 40
  last: .space 40
  jedi: .space 6
  errorMessage: .asciiz "Invalid input. First name must be at least two characters and last name must be at least three characters."
  jediOutput: .asciiz "Your Jedi Name: "
  powerOutput: .asciiz "Your Power Level: "
  newline: .asciiz "\n"


.text
main:
  la    $a0, firstQuestion
  li    $v0, 4    # $v0 = 4
  syscall

  la    $a0, first
  li    $a1, 40    # $a1 = 16
  li    $v0, 8    # $v0 = 8
  syscall

  la    $a0, lastQuestion
  li    $v0, 4    # $v0 = 4
  syscall

  la    $a0, last
  li    $a1, 40    # $a1 = 16
  li    $v0, 8    # $v0 = 8
  syscall

  la    $s0, first
  la    $s1, last
  la    $s3, jedi

  lb    $t1, 3($s1)
  beq    $t1, $0, error  # if $t1 == $0 then error

  lb    $t1, 2($s0)
  beq    $t1, $0, error  # if $t1 == $0 then error

  lb    $t1, 0($s1) #Get and store first character of last name
  sb    $t1, 0($s3)

  lb    $t1, 1($s1) #Get and store second character of last name
  sb    $t1, 1($s3)

  lb    $t1, 2($s1) #Get and store third character of last name
  sb    $t1, 2($s3)

  lb    $t1, 0($s0) #Get and store first character of first Name
  sb    $t1, 3($s3)

  lb    $t1, 1($s0) #Get and store second character of first name
  sb    $t1, 4($s3)

  sb    $0, 5($s3)  #Store null byte at end of jedi name

  la    $a0, jediOutput
  li    $v0, 4    # $v0 = 4
  syscall

  la    $a0, jedi
  li    $v0, 4    # $v0 = 4
  syscall

  la $a0, newline
  li    $v0, 4    # $v0 = 4
  syscall

  la    $a0, powerOutput
  li    $v0, 4    # $v0 = 4
  syscall

  li    $s1, 0    # $s1 = 0
  la    $s2, jedi

  beq    $s2, 0, done  # if $s2 == 0 then done
  j loop

loop:
  lb    $t1, 0($s2)
  beq    $t1, $0, done  # if $t1 == $0 then done
  add    $s1, $s1, $t1    # $s1 = $s1 + $t1
  addi  $s2, $s2, 1      # $s2 = $s2 + 1
  j loop

error:
  la    $a0, errorMessage
  li    $v0, 4    # $v0 = 4
  syscall

  li    $v0, 10    # $v0 = 10
  syscall

done:
  move   $a0, $s1    # $a0 = $s1
  li    $v0, 1    # $v0 = 4
  syscall

  li    $v0, 10    # $v0 = 10
  syscall
