.data
  var: .asciiz "Hello\nGoodbye\tForever" #z automatically adds a null byte at the end of the string
                                        #address of var is H, e is var+1 etc.
.text
main:
  la $t1, var   #loads the address of the first byte of var into $t1
  lb $s0, 1($t1) #Loads e into $s0

  la $a0, var   #Loads the address of the first byte of var into $a0
  addi $v0, $0, 4 #Prints the string that starts at the address in $a0
  syscall

  addi $v0, $0, 5 #Reads an int from the console and stores it in $v0
  syscall

  la $a0, var   #Loads the address of the first byte of var into $a0
  addi $a1, $0, 80  #Loads the size of the string that will be read into $a1
  addi $v0, $0, 8  #Reads a string from the console and stores it in memory addresses from var to var+80
  syscall
end:
  addi $v0, $0, 10
  syscall
