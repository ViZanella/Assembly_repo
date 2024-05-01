    Introdução às Atividades em Assembly

    Este arquivo tem o intuito de introduzir os conceitos básicos de programação em Assembly e explicar um exemplo prático de código que foi utilizado para testar os primeiros passos no desenvolvimento com essa linguagem. Assembly é uma linguagem de programação de baixo nível que oferece um controle direto e detalhado sobre o hardware do computador. Ela é específica para a arquitetura do processador e, por isso, varia entre diferentes tipos de dispositivos.

    Por Que Assembly?

    Embora Assembly seja mais complexa e menos intuitiva do que as linguagens de alto nível, ela permite uma compreensão profunda de como o software interage com o hardware. Isso é crucial para o desenvolvimento de software que requer alta performance e eficiência, como sistemas operacionais, jogos em tempo real e programas que interagem diretamente com o hardware do computador.

    Código de Exemplo

    Segue um pequeno código como exemplo simples destinado a ilustrar como pode ser manipulado os dados diretamente na memória de um computador usando Assembly. Neste exemplo, o programa armazena o nome "Victoria" em memória, demonstrando o carregamento e armazenamento de valores individuais em locais de memória específicos.
    Este exemplo foi desenvolvido para demonstrar o básico da manipulação de dados em Assembly, oferecendo uma visão inicial sobre como os valores são carregados na memória, processados e armazenados. A escolha do nome "Victoria" como exemplo visa apenas ilustrar de forma clara e didática esses conceitos sem qualquer significado especial.

ORG 000 / Define o início do programa no endereço de memória 000

Load V
Store NAME_V
Load i
Store NAME_I
Load c
Store NAME_C
Load t
Store NAME_T
Load o
Store NAME_O
Load r
Store NAME_R
Load i
Store NAME_I2
Load a
Store NAME_A

Halt / Termina execução

V, HEX 56
i, HEX 69
c, HEX 63
t, HEX 74
o, HEX 6F
r, HEX 72
a, HEX 61

/Reservar o espaço para o Nome Victoria

NAME_V, HEX 0
NAME_I, HEX 0
NAME_C, HEX 0
NAME_T, HEX 0
NAME_O, HEX 0
NAME_R, HEX 0
NAME_I2, HEX 0
NAME_A, HEX 0

Início e Inicialização:
    ORG 000: Define o início do programa no endereço de memória 000.
Carregamento e Armazenamento:
    Load seguido por um valor: Carrega um valor hexadecimal específico no registrador acumulador.
    Store seguido por um nome: Armazena o valor do acumulador no endereço de memória associado ao nome dado.
Valores e Variáveis:
    Cada letra de "Victoria" é associada a um valor hexadecimal específico que corresponde ao seu código ASCII.
    Cada letra é armazenada em uma localização de memória reservada, por exemplo, NAME_V, NAME_I, etc.
Finalização:
    Halt: Termina a execução do programa.
Reservas de Memória:
    Após o código de execução, há locais de memória reservados para cada letra do nome "Victoria", inicialmente definidos como zero (HEX 0).
