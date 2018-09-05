.model tiny

.data

.code
    
    imprimirTexto macro texto
        mov ah,32
        lea dx, texto
        int 21h
    endm

    
    imprimirDigito macro digito
        mov dl, digito
        add dl, 65 ;cod.ASCII
        mov ah, 02h
        int 21h
    endm 
    
    macro finalizar
        mov ax,0C07h
        int 21h
        .exit
    endm
    
    
.startup
        mov cl, 0
        
        bucle:
            imprimirDigito cl
            cmp cl, 25
            je salir
            inc cl
            jmp bucle
        
        salir:
            finalizar
end