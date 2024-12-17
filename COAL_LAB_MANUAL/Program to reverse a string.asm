; -----Written by: Muhammad Umair Habib-----

; Question: Program to reverse a string.

.model small
.stack 100h
.data
    string db 'umair$'

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset string
    
    mov cx, 5
    L1:
        mov bx, [si]
        push bx
        inc si
    loop L1
    
    mov cx, 5
    L2:
        pop dx
        mov ah, 2
        int 21h
    loop L2
    
    mov ah, 4ch
    int 21h     
    
main endp
end main