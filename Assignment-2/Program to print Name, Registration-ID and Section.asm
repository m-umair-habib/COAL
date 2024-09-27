# Program to print Name, Registration-ID and Section.

.model small
.stack 100h
.data
    uname db "Name: Umair", 0ah, 0dh, '$'
    id db "ID: BSF2201581", 0ah, 0dh, '$'
    section db "Section: C", 0ah, 0dh, '$'
.code
    
    mov ax, @data
    mov ds, ax
    
    mov dx, offset uname
    
    mov ah, 9
    int 21h
    
    mov dx, offset id
    
    mov ah, 9
    int 21h
    
    mov dx, offset section
    
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h     
end