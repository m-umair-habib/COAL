# Sum of two single digits results in single digit output.

.model small
.stack 100h
.data
.code
   
   mov al, 2
   mov bl, 3
   
   add al, bl
   
   add al, 48
   
   mov dl, al
   
   mov ah, 2
   
   int 21h
   
   mov ah, 4ch
   int 21h
end