 @R2
  M=0

  //If R0 is zero, end program
  @R0
  D=M
  @END
  D;JEQ

(ADDAGAIN)
  //Check if R1 is 0, meaning no more iterations
  @R1
  D=M
  @END
  D;JEQ
  
  //R2 += R0
  @R0
  D=M
  @R2
  M=D+M
  
  @R1
  M=M-1
  
  @ADDAGAIN
  0;JMP
(END)
  @END
  0;JMP




   @2
    M=0     // R2 = 0
    @i
    M=0     // i=0
(LOOP)
    @i
    D=M     // D=i
    @0
    D=D-M   // D=i-R0
    @END
    D;JGE    // if i-R0 >= 0 goto END

    @1
    D=M     // D=R1
    @2
    M=D+M   // R2=R2+R1
    @i
    M=M+1   // i=i+1
    @LOOP
    0;JMP   // Repeat
(END)
    @END
    0;JMP
