; -----Written by: Muhammad Umair Habib-----

; Question: Print a single character on screen.

.model small
.stack 100h
.data
.code

main proc
    mov dl, 'A'
    
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    
main endp
end main