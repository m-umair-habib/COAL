; -----Written by: Muhammad Umair Habib----- 

; Question: Variables, data types, offset and LEA.

.model small
.stack 100h
.data
    var1 db '1'
    var2 db ?
    var3 db '12345$'
    
.code

main proc
    mov ax, @data ;it moves the memory location of @DATA into AX register(16-bit register)
    mov ds, ax ;move data address to ds so that data seg get initialized as heap memory to access variable fast
    
    mov dl, var1
    mov ah, 2
    int 21h
    
    mov ah, 1
    int 21h
    
    mov bl, al
    add bl, 48
    mov dl, bl
    mov ah, 2
    int 21h
    
    mov dx, offset var3 ;holds the beginning address of variables as 16-bits
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main