; -----Written by: Muhammad Umair Habib----- 

; Question: Program to print two different strings on two different lines.

.model small
.stack 100h
.data
    string1 db 'hello$'
    string2 db 'world$'
    
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset string1
    mov ah, 9
    int 21h  
    
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov dx, offset string2
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
        
main endp
end main