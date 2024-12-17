; -----Written by: Muhammad Umair Habib----- 

; Question: Program to print array using loop.

.model small
.stack 100h
.data
    array1 db 1, 2, 3, 4
    
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset array1
    
    mov cx, 4
    
    L1: 
        add [si], 48
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
    loop L1
    
    mov ah, 4ch
    int 21h
    
main endp
end main