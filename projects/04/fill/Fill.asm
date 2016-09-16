// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(START)
		
// SETUP SCREEN
// @address Save number 16384 into @address
@SCREEN		//@16384
D=A
@address	// @16  RAM[16]
M=D 	// address = 16384

// @n Setup the max num for counter
@8191
D=A
@n
M=D

// Set counter n = 0
@i		// RAM[17]
M=0 	// i = 0
		
// Set R0 to 1 if key is pressed or to 0 if it is not
@KBD
D=M
@R0
M=D


// if  R0 == 0 WHITEN all pixles
@WHITEN
D;JEQ

// if  R0 > 0 BLACKEN all pixles
@BLACKEN
D;JGT


(BLACKEN)
	// Check if all pixles are black
	@i	// @17
	D=M
	@n	// @16
	D=D-M
	@START	//@27
	D;JGT		// if i > n goto END

	// Set the pixles at the address location to -1
	@address // @18
	A=M
	M=-1	// RAM[address] = -1 (16 pixles) 1111111111111111

	// Counter +1
	@i
	M=M+1 	// i = i + 1
	// Address +1
	@1
	D=A
	@address
	M=D+M	
@BLACKEN
0;JMP 	// goto BLACKEN

(WHITEN)
	// check if all pixels are white
	@i	// @17
	D=M
	@n	// @16
	D=D-M
	@START	//@27
	D;JGT		// if i > n goto END

	@address // @18
	A=M
	M=0 	// RAM[address] = 0 (16 pixles) 0000000000000000

	@i
	M=M+1 	// i = i + 1
	@1
	D=A
	@address
	M=D+M	
@WHITEN
0;JMP 	// goto WHITEN

