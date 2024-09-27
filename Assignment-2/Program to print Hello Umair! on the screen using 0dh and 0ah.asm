# Program to print "Hello Umair!" on the screen using 0dh and 0ah.

.model small
.stack 100h
.data
     str db "Hello", 0ah, 0dh, "Umair!", '$'
.code
     
     mov ax, @data
     
     mov ds, ax
     
     mov dx, offset str
     
     mov ah,9
     int 21h
     
     mov ah, 4ch
     int 21h
end