main:
        li		$t0, 0                  # $t0=0
        li      $t1, 1                  # $t1=1

        .data
if:     .asciiz "If \n"
else:   .asciiz "Else \n"
hello:  .asciiz "Hello again \n"
        .text

        bge		$t0, $t1, else_statm	# In this case, bge condition is false because t0<t1, so it will
                                        # continue executing the code
        li      $v0, 4
        la		$a0, if		            # it will print "if" here
        syscall
        j end_if                        # we don't want to execute the else statement part, so j"jump" to
                                        # "end-if" label to continue executing the code after the else part
else_statm:                             
        li      $v0, 4                  
        la      $a0, else
        syscall
end_if:
        li      $v0, 4
        la      $a0, hello              # print "Hello again"
        syscall
        
        li      $v0, 10
        syscall
        
        