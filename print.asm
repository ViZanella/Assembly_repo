.model small ; define o modelo de memória small
.stack 64 ; Aloca um espaco de 64 bytes para a pilha 

.data; inicio da secao de dados 
message db 'Soldador', '$'; define uma mensagem e termina com $

.code ;  inicio da secao do código
main proc ;define o inicio do procedimento principal

mov ax, @data; carrega o endereço do seguimento em AX
mov ds, ax; move o valor em AX para o registrador DS

mov ah,9h; preparar o registrador AH para a função 09h do DOS
mov dx, offset message; vai fazer o deslocamento da mgs em DX

int 21h; introdução da interrupção 

main endp; marca ofim 
end main; indica o fim

