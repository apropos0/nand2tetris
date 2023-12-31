// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.


(KEYB)
    @24576
    D=M
    @WHITE
    D;JEQ
    @BLACK
    0;JMP


(BLACK)
    @SCREEN
    D=A
    @i
    M=D
    @24575
    D=A
    @n
    M=D
    (BLOOP)
        //check that value at n is black
        @n
        D=M
        A=D
        D=M+1
        @KEYB
        D;JEQ

        //if its not then set the entire row to 1
        @i
        A=M
        M=-1
        D=A+1
        @i
        M=D
        @BLOOP
        0;JMP


(WHITE)
    @SCREEN
    D=A
    @j
    M=D
    @24575
    D=A
    @m
    M=D
    (WLOOP)
        //check that value at n is white
        @m
        D=M
        A=D
        D=M
        @KEYB
        D;JEQ

        //if its not then set the entire row to 1
        @j
        A=M
        M=0
        D=A+1
        @j
        M=D
        @WLOOP
        0;JMP




