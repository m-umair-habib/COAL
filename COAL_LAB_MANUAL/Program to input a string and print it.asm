; -----Written by: Muhammad Umair Habib-----

; Question: Program to input a string and print it.

.model small
.stack 100h
.data
    var1 db 100 dup('$')

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset var1
    
    L1:
        mov ah, 1
        int 21h
        
        cmp al, 13
        je print_it
        
        mov [si], al
        inc si
        jmp L1
   
    
    print_it:
        mov dx, offset var1
        mov ah, 9
        int 21h
        
    mov ah, 4ch
    int 21h
        
main endp
end main