O DOS (Disk Operating System - Sistema Operacional de Disco) e Assembly são conceitos relacionados, mas distintos, no mundo da programação de computadores.

DOS é um sistema operacional antigo, baseado em texto, lançado pela Microsoft.
Ele funcionava como uma interface entre o usuário e o hardware do computador, permitindo a execução de programas e o gerenciamento de
arquivos.O DOS não é diretamente relacionado à linguagem Assembly todavia foi projetado para rodar em processadores de 16 bits, como o
Intel 8086. Programas escritos em Assembly para DOS interagiam diretamente com o hardware usando as instruções específicas desse processador.
Alguns utilitários do próprio DOS podem ter sido escritos em Assembly para obter melhor performance.

Frequentemente utilizado para:

Chamadas de Interrupção: Utilizar interrupções de software fornecidas pelo DOS para realizar funções do sistema operacional como 
gerenciamento de arquivos, entrada/saída e outras operações de controle de sistema.

Acesso ao Hardware: Oferecer acesso direto e controle sobre o hardware do sistema, algo crucial para jogos, utilitários de sistema e 
outros  softwares que necessitavam de um alto desempenho e utilização específica dos recursos do computador.

Desempenho: Maximizar o desempenho e a eficiência do software, aproveitando a proximidade da linguagem Assembly com a linguagem de máquina
e a arquitetura do processador.

Em resumo, a relação entre Assembly e DOS é caracterizada pela capacidade de Assembly de manipular diretamente tanto as funções do DOS 
quanto o hardware do computador, permitindo uma programação extremamente eficiente e específica, adequada para o ambiente de computação 
da época.

-----------------------------------------------------------------------------
No código Assembly fornecido em  **Prints.asm ** é demonstrado como os registradores são utilizados para armazenar dados e instruções para realizar operações de entrada e saída.

1. Definição do Modelo de Memória e Alocação da Pilha:

.model small: Define o modelo de memória "small", limitando o acesso da memória a 64KB.

.stack 64: Reserva 64 bytes na pilha para armazenar dados temporários durante a execução do programa.

2. Seção de Dados:

.data: Inicia a seção de dados, onde variáveis ​​e strings são armazenadas.

message db 'Soldador', '$': Declara a variável message como uma string contendo o texto "Soldador" e terminando com o caractere '$'.

3. Seção de Código:

.code: Inicia a seção de código, onde as instruções do programa são armazenadas.

main proc: Define o início do procedimento principal main.

4. Carregando o Segmento de Dados:

mov ax, @data: Carrega o endereço do segmento de dados no registrador AX.

mov ds, ax: Move o valor de AX para o registrador de segmento de dados DS. Isso indica ao programa qual segmento de memória contém as 
variáveis ​​e strings.

5. Preparando a Chamada do Sistema:

mov ah, 9h: Define o valor 9h no registrador AH, que indica a função DOS 9h para imprimir uma string na tela.

mov dx, offset message: Carrega o deslocamento da variável message no registrador DX. O deslocamento é a distância da variável em relação 
ao início do segmento de dados.

6. Realizando a Chamada do Sistema:

int 21h: Executa a interrupção 21h, que aciona o sistema operacional para realizar a função DOS indicada pelo registrador AH. No caso, a 
função 9h imprime a string contida em DX na tela.

7. Finalizando o Procedimento e o Programa:

main endp: Marca o final do procedimento principal main.

end main: Indica o fim do programa.


***Resumo do Uso dos Registradores:***

AX: Armazena o endereço do segmento de dados e o valor da função DOS 9h.

DS: Define o segmento de dados ativo para o programa.

AH: Indica a função DOS a ser executada (9h para imprimir string).

DX: Contém o deslocamento da variável message no segmento de dados.
