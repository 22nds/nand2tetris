// Draws a filled rectangle at the screen's top left corner
// The width is 16 pixles and its height is RAM[0]
// Usage: put a non-negative number in RAM[0]

// Get the height from @0
// Make a variable height
@R0
D=M
@height
M=D

// Counter that will count up to the @height.
// Starts at 0
@i
M=0 	// i = 0

@SCREEN 	// get the screen register number @16384
D=A 		// save number 16384
@address
M=D 	// set @address @16 to 16384

(LOOP)
	// Get count number
	@i
	D=M
	
	// get height and check if count is greater than height 
	// if it is greater end the loop
	@height
	D=D-M
	@END
	D;JGT		// if i > n goto END

	// if count is not greater than height
	// get the current address and
	// set the value of the register to -1
	@address // @16  (first iteration is 16384)
	A=M		// set the new address for writing pixles
	M=-1	// Set to all black RAM[address] = -1 (16 pixles) 1111111111111111

	// update the counter +1
	@i
	M=M+1 	// i = i + 1
	
	// get the number 32 in the register D
	@32
	D=A
	
	// Set the address for the next loop: address = address + 32
	@address
	M=D+M	
@LOOP
0;JMP 	// goto LOOP

(END)
@END		// program's end
0;JMP