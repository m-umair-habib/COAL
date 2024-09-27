# Printing the Strings.

.model small
.stack 100h
.data
    str1 db 'Hello$'
    str2 db 'Umair$'
.code
    
    mov ax, @data
    mov ds, ax
    
    lea dx, str1
    
    mov ah, 9
    int 21h
    
    mov dx, 10
    
    mov ah, 2
    int 21h
    
    mov dx, 13
    
    mov ah, 2
    int 21h
    
    lea dx, str2
    
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
end