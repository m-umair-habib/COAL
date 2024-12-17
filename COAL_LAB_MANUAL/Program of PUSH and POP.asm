; -----Written by: Muhammad Umair Habib-----

; Question: Program of PUSH and POP.

.model small
.stack 100h
.data

.code

main proc
    mov ax, '2'
    push ax
    
    mov bx, 5
    push bx
    
    pop bx
    
    add bx, 48
    
    mov dx, bx
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main