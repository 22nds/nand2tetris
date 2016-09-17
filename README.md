## About

These files were created as part of the course
*Build a computer on Coursera*
https://www.coursera.org/learn/build-a-computer

Book pdf, lecture pdfs, tools code and projects were provided
code in projects was modified to make a working computer and 
the notes are here to make sure a quick review of all content 
is available.

## More info:
www.nand2tetris.org and the book "The Elements of Computing Systems"
by Nisan and Schocken, MIT Press.


## Boolean logic

Example:
NOT(0 OR (1 AND 1))=
NOT(0 OR 1)=
NOT(1)=
0


## Boolean function
f(x, y, z) = (x AND y) OR (NOT (x) AND z)

## Truth table

 x | y | z | f
===|===|===|===
 0 | 0 | 0 | 0
 0 | 0 | 1 | 1
 0 | 1 | 0 | 0
 0 | 1 | 1 | 1
 1 | 0 | 0 | 0
 1 | 1 | 0 | 1
 1 | 1 | 1 | 1


. = AND
+ = OR




!(/images/booleans.png?raw=true)



T1 : Commutative Law
    (a) A + B = B + A
    (b) A B = B A
T2 : Associate Law
    (a) (A + B) + C = A + (B + C)
    (b) (A B) C = A (B C)
T3 : Distributive Law
    (a) A (B + C) = A B + A C
    (b) A + (B C) = (A + B) (A + C)

T11 : De Morgan's Theorem
    (a)
    (b) 


*Any boolean function can be represented using an expression containing AND and NOT operators.*

x OR y = NOT(NOT(x) AND NOT(y))

NAND
NOT(x AND x) = NOT(x) = x NAND x
(x NAND y) = NOT(x AND y)

NOT(x) = (x NAND x)
x AND y = NOT(x NAND y)


## NAND gate
 x | y | output 
===|===|===
 0 | 0 | 1 
 0 | 1 | 1 
 1 | 0 | 1 
 1 | 1 | 0 

## AND gate
y = AB = A.B
True if both inputs are true.

 x | y | output 
===|===|===
 0 | 0 | 0 
 0 | 1 | 0 
 1 | 0 | 0 
 1 | 1 | 1 

## OR gate
y = A+B
True if either or both inputs are true. 

 x | y | output 
===|===|===
 0 | 0 | 0 
 0 | 1 | 1 
 1 | 0 | 1 
 1 | 1 | 1 

## XOR gate - Exclusive OR

True if either but not both inputs are true. 

 x | y | output 
===|===|===
 0 | 0 | 0 
 0 | 1 | 1 
 1 | 0 | 1 
 1 | 1 | 0 


## NOT gate
NOT(A)

 x | x | output 
===|===|===
 0 | 0 | 1 
 0 | 1 | -
 1 | 0 | -
 1 | 1 | 0 

## NOR gate
Negated A+B
Output is true if both inputs are false.

 x | x | output 
===|===|===
 0 | 0 | 1 
 0 | 1 | 0
 1 | 0 | 0
 1 | 1 | 0 

## XNOR gate
Negated A+B
True if outputs are the same and false if they are different
 x | x | output 
===|===|===
 0 | 0 | 1 
 0 | 1 | 0
 1 | 0 | 0
 1 | 1 | 1 


Gate Logic

A technique for implementing Boolean functions using logic gates
Logic gates:
- Elementary (Nand, And, Or, Not ...)
- Composite (Mux, Adder ...)






Gate interface (left) and Gate Implementation (right)

Circuit implementations






Hardware Description Language












    HDL is a functional / declarative language
    The order of HDL statements is insignificant
    Before using a chip part, you must know its interface. For example:
        Not(in= , out= )
        And(a= , b= , out= )
        Or(a= , b= , out= )

Hardware description languages
Common HDLs

    VHDL
    Verilog

Our HDL

    Similar in spirit to other HDLs
    Minimal and simple
    Provides all you need for this course

Hardware simulation
Files: .hdl, .tst, .out, .cmp

HDL Code (and or test script) --> simulate in hardware simulator

Run hardware simulator
bash HardwareSimulator.sh


Simulation proces

    Load the HDL file into the hardware simulator
    Enter values (0s and 1s) into the chip's input pins
    Evaluate the chip's logic
    Inspect the resulting values of
        The output pins (eg. out)
        The internal pins (nota, notb, aAndnotb, notaAndb)

Testing scripts

    Load the HDL and test script files
    Run the script
    Check if there were any errors


Simulation with compare file logic

    when each output command is executed, the outputted line (.out) is compared to the corresponding line in the compare file (.cmp)
    if the two lines are not the same, the simulator throws a comparison error


Test script = series of commands to the simulator

Multi-bit Buses

Multi-bit busses are indexed right to left
If A is a 16-bit bus then A[0] is the right-most bit and A[15] is the left most bit
0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1
A[0] lsb - least significant bit
A[15] msb - most significant bit




PROJECT 1 - 30 different chips

Given: Nand
Goal is to build the following gates

    Elementary logic gates
        Not
        And
        Or 
        Xor
        Mux  (use And, Or, Not)
        Dmux (Demultiplexor) 
    16-bit variants
        Not16
        And16
        Or16
        Mux16 
    Multi-way variants
        Or8Way 
        Mux4Way16
        Mux8Way16
        DMux4Way
        DMux8Way
		
		
## 16-bit bitwise AND
a    0100111000111101
b    1111001100011010
=====================
AND  0100001000011000

## 16-bitwise OR
a    0110110011100101
b    1001110100101011
=====================
OR   1111110111101111

## 16-bitwise NOT
a    1011010010110011
=====================
NOT  0100101101001100

















## Multiplexor
```
inputs = a,b, sel
output = out
if (sel == 0)
     out = a
else
     out = b
```

















HALF ADDER
FULL ADDER
MULTI-BIT ADDER

ARITHMETIC LOGIC UNIT (ALU)




































