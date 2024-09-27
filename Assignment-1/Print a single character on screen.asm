# Program to print a single character on screen.

.model small
.stack 100h
.data
.code
   # storing a value in accumulator register
   mov al, 'A'
   
   # move value to data register to print on screen
   mov dl, al
   
   # calling print service routine
   mov ah, 2
   int 21h
   
   # returning control back
   mov ah, 4ch
   int 21h 
end