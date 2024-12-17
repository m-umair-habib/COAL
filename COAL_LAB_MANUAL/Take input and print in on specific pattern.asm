; -----Written by: Muhammad Umair Habib-----

; Question: 
;           1. Prompt User to Enter 1st (1-digit) number
;           2. Prompt User to Enter 2nd (1-digit) number
;           3. Add two numbers
;           4. Display result in the following format: "The sum of 2 and 7 is 9"

.model small
.stack 100h
.data
    msg1 db 'The sum of$'
    msg2 db 'and$'
    msg3 db 'is'    
    
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1 ;1st value
    int 21h
    
    mov bl, ah
    
    mov ah, 1 ;2nd value
    int 21h
    
    mov cl, ah
    
    add cl, bl
    mov dl, cl
    add dl, 48
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov dl, bl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov dl, cl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dx, offset msg3
    mov ah, 9
    int 21h
    

    mov ah, 4ch
    int 21h 
    
main endp
end main