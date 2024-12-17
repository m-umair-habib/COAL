; -----Written by: Muhammad Umair Habib-----

; Question: Program to swap two numbers using PUSH and POP.

.model small
.stack 100h
.data
.code

main proc
    mov ax, '2'
    push ax
    
    mov bx, '3'
    push bx
    
    pop ax
    mov dx, ax
    mov ah,2
    int 21h
    
    pop bx
    mov dx, bx
    mov ah,2
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main