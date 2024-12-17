; -----Written by: Muhammad Umair Habib----- 

; Question: Program to take input of two numbers and add them.
; like we have to take 3 and 4 from the user and then add them, 3+4=7.

.model small
.stack 100h
.data
.code

main proc
    mov ah, 1  ;take first input as 3
    int 21h
    
    mov bl, al ;move al=3 to bl
    
    mov ah, 1  ;take second input as 4
    int 21h
    
    add bl, al ;add 3+4, ascii of 3 is 51 and ascii of 4 is 52 which is equal to 103 so we have to subtract 48 to get desire answer.
    
    sub bl, 48
    
    mov dl, bl
    
    mov ah, 2
    int 21h
    
    
    mov ah, 4ch
    int 21h
    
main endp
end main