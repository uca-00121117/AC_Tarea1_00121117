org 100h 
;limpiando 
mov cx,0
mov al,0
mov bl,0
mov ax,0
;usuario ->al
mov al,[0200h]
;bl->usuario
mov bl,[0210h]
div bl
;al-> 0220 -> cx/bl
mov [0220h],al

int 20h