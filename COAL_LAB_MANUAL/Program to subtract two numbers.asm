; -----Written by: Muhammad Umair Habib----- 

; Question: Program to subtract two numbers.
; let we have to solve 5-3=2
.model small
.stack 100h
.data
.code

main proc
    mov al, 3
    mov bl, 5
    
    sub bl, al
    
    add bl, 48
    
    mov dl, bl
    
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
        
main endp
end main