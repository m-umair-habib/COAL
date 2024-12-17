; -----Written by: Muhammad Umair Habib----- 
; Question: Program to print capital letters from A to Z using loop.

.model small
.stack 100h
.data
.code

main proc
    
    mov al, 65
    mov cx, 26
    
    L1:
    mov dl, al
    mov ah, 2
    int 21h
    
    inc al
    
    loop L1
    mov ah, 4ch
    int 21h
    
main endp
end main