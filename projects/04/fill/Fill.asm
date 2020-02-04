// while (true) {
//   key = input
//   if (key != 0)
//    color = -1 // black
//   else
//    color = 0 // white
//   for (int address = KBD + 8192, address > KBD , address --) {
//     RAM[address] = color
//   }  
// } 
// 스크린에 그릴수 있는 총 단어의 수 = 8192 = 2^9 (행 비트) * 2^8 (열 비트) / 2^4 (한 단어당 비트수)

// Put your code here.  
(READ_KEYBOARD)
  @KBD                  
  D=M
  
  @PAINT_BLACK          
  D;JNE
  @PAINT_WHITE          
  0;JMP

(PAINT_WHITE)
  @color
  M=0                  
  @PAINT_LOOP_INIT
  0;JMP
(PAINT_BLACK)
  @color
  M=-1                  

(PAINT_LOOP_INIT)
  @8192                 
  D=A                    
  @counter             
  M=D

(PAINT_LOOP)
  @counter              
  D=M
  @READ_KEYBOARD
  D;JLE                 

  @counter           
  M=M-1

  D=M                   
  @SCREEN
  D=A+D
  @address	  
  M=D

  @color               
  D=M

  @address            
  A=M
  M=D

  @PAINT_LOOP
  0;JMP