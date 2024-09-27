# Program to print name with characters.

.model small
.stack 100h
.data
.code
    
    mov al, 'U'
    mov dl, al
    mov ah, 2
    int 21h
    
    mov al, 'M'
    mov dl, al
    mov ah, 2
    int 21h
    
    mov al, 'A'
    mov dl, al
    mov ah, 2
    int 21h
    
    mov al, 'I'
    mov dl, al
    mov ah, 2
    int 21h
    
    mov al, 'R'
    mov dl, al
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
end