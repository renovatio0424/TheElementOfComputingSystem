// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
	@i
	M=1
	@sum
	M=0
(LOOP)
	@i	//D=i
	D=M
	@1	//D=i-RAM[1]
	D=D-A
	@END
	D;JGT	// If(i-RAM[1])=0 goto END
	
	// i += 1
	@i
	M=M+1

	// sum += RAM[0]
	@sum
	D=M
	@0
	D=D+M
	@sum
	M=D

	// jump to loop
	@LOOP
	0;JMP
(END)
	@sum
	D=M
	@2
	M=D

	@END
	0;JMP

