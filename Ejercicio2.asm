org 100h
section .text
   mov ax,[array]
   mov bp,array
   mov di,000h
   mov si,000h

lupi:    mov   ax,[bp+di]
         mov   [300h+di],ax      ;Este es el que va haciendo el salto de 2
         mov   [200h+si],ax      ;este lo muestra
         inc   si                ;incrementa el que muestra
         add   di,2h             ;Salto de posicion en 16bits
         cmp   di,18d            ;condicion de paro
         jbe   lupi
     
   mov bx,200h
   mov al, 0000h
sumalup: add   al,[bx]
         inc   bx
         cmp   bx,209h
         jle   sumalup
         mov   bl,000Ah
         div   bl
         mov   [210h],al

   int 20h

section .data
array dw 1d,2d,3d,4d,5d,4d,3d,2d,1d,50d


















; org 100h

; RANDGEN:         ; generate a rand no using the system time
; RANDSTART:
;    MOV AH, 00h  ; interrupts to get system time        
;    INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

;    mov  ax, dx
;    xor  dx, dx
;    mov  cx, 10    
;    div  cx       ; here dx contains the remainder of the division - from 0 to 9

;    add  dl, '0'  ; to ascii from '0' to '9'
;    mov ah, 2h   ; call interrupt to display a value in DL
   
;    mov  [200h],dx

;    int 21h    
; RET  
; int 20h

