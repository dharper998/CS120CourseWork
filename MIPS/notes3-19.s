.data
    result: .word 4
    mem0:   .word 7
    mem1:   .word 3

.text
main:
    lw    $s0, mem0
    lw    $s1, mem1
    add   $s2, 0, $0
loop:
    beq    $0, $s1, done
    add    $s2, $s2, $s0
    addi   $s1, $s1, -1
    j      loop
done:
    sw    $s2, result
end:
    addi  $v0, $0, 10
