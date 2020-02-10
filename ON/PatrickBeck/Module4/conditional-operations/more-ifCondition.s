            .data
Thanku:     .asciiz "\nThank You"
            .text
main:
            li      $t0, 2                  
            li      $t1, 5                  

            ble     $t0, $t1, else_statm    # condition is true because t1>t0, so it will skip
                                            # to else_statm
            sub     $a0, $t0, $t1           # a0 = t0 - $t1
            li      $v0, 1                  # print integer
            syscall
            j       end_if                  # jump to end_if to skip the "else_statm" part
                                        

else_statm:                                 
            addi    $a0, $t0, 20            
            li      $v0, 1                  
            syscall                         

end_if:                                     
            li      $v0, 4                  # system call code to print string
            la      $a0, Thanku
            syscall

            li      $v0, 10                 # end of program
            syscall