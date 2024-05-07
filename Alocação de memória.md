A alocação de memória dinâmica em Assembly permite que você armazene dados de tamanho variável, como um nome, sem precisar declarar um bloco de memória estático com tamanho fixo. Isso oferece mais flexibilidade e eficiência na utilização da memória, especialmente quando se trabalha com dados de tamanho incerto ou dinâmico.

Existem duas maneiras principais de alocar memória dinâmica em Assembly:

1. Usando o Heap:

O Heap é uma área de memória não contida em nenhum segmento ou seção específica do programa.
A alocação no heap é feita usando instruções como malloc ou calloc, que retornam um ponteiro para o início do bloco de memória alocado.
O tamanho do bloco de memória é especificado como argumento da instrução.
É importante liberar a memória alocada no heap usando a instrução free para evitar vazamentos de memória.

2. Usando a Pilha:

A pilha é uma área de memória reservada para armazenar dados temporários e informações de função.
A alocação na pilha é feita automaticamente pela CPU ao chamar uma função.
O tamanho da memória alocada na pilha depende do tamanho dos argumentos da função e das variáveis ​​locais.
A memória alocada na pilha é liberada automaticamente quando a função retorna.
