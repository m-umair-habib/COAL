; -----Written by: Muhammad Umair Habib----- 

; Question: Program divide two numbers.

.model small
.stack 100h
.data
    q db ?
    r db ?

.code

main proc
    mov ax, 26
    mov bl, 5
    
    div bl
    
    mov r, ah
    mov q, al
    
    mov dl, r
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dl, q
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main