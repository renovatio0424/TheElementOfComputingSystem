// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//i=R0
@R0
D=M
@i
M=D        

//j=R1
@R1
D=M
@j
M=D    

//Mult = 0
@Mult
M=0    

(LOOP)     
	//if(i=0) goto END
	@i
	D=M
	@END    
	D;JLE     
	//Mult = Mult + j
	@j
	D=M
	@Mult
	M=M+D

	//if(i-1) = 0 goto LOOP
	@i
	M=M-1
	@LOOP     
	0;JMP
(END)
//R2=Mult
@Mult  
D=M
@R2
M=D        

@END
0;JEQ

