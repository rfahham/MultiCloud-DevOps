# Variáveis

> As variáveis em Python são elementos fundamentais na programação. Elas são utilizadas para armazenar e representar valores, como números, textos, listas, entre outros. Uma variável é como uma caixa onde podemos guardar informações e dar um nome para acessá-las posteriormente.

Utilizando variáveis em Python

> Para utilizar uma variável em Python, é necessário seguir alguns passos simples. Primeiramente, devemos atribuir um valor à variável utilizando o sinal de igual (=). 

Por exemplo, podemos criar uma variável chamada “idade” e atribuir a ela o valor 25:

```bash
idade = 25
```

Agora, a variável “idade” contém o valor 25 e podemos utilizá-la em nosso programa. Podemos imprimir o valor da variável utilizando a função print():

```bash
print(idade)
```

Isso irá exibir o valor 25 no console. 

Também podemos realizar operações com variáveis, como soma, subtração, multiplicação, entre outras. Por exemplo, podemos criar uma variável chamada “resultado” e atribuir a ela a soma de duas variáveis:

```bash
a = 10
b = 20
resultado = a + b
print(resultado)

30
```
Isso irá exibir o valor 30 no console.

## Tipo de variáveis em Python

> Em Python, as variáveis não precisam ter um tipo específico definido previamente, como acontece em outras linguagens de programação. Isso significa que podemos atribuir valores de diferentes tipos a uma mesma variável ao longo do programa. Por exemplo, podemos criar uma variável chamada “nome” e atribuir a ela uma string:

```bash
nome = "João"
```

Mais tarde, podemos atribuir um número à mesma variável:

```bash
nome = 30
```

No entanto, é importante ter cuidado ao utilizar variáveis em Python para evitar erros de lógica ou confusões. É recomendado utilizar nomes de variáveis que sejam descritivos e facilmente compreensíveis, para facilitar a leitura e manutenção do código.

## Tipos de variáveis em Python e como declará-las

> Em Python, existem diversos tipos de variáveis que podem ser utilizados para armazenar diferentes tipos de dados. A seguir, apresentaremos os principais tipos de variáveis em Python e como declará-las.

### Variáveis numéricas

    Inteiro (int)

> Utilizado para armazenar números inteiros, como 1, 2, -3, etc. Para declarar uma variável inteira, basta atribuir um valor numérico a ela, sem a necessidade de especificar o tipo.

```bash
idade = 25
```

### Ponto flutuante 

    (float)

> Utilizado para armazenar números decimais, como 3.14, 2.5, etc. Para declarar uma variável do tipo float, é necessário adicionar um ponto decimal ao valor.

```bash
altura = 1.75
```

### String (str)

Variáveis de texto

> Utilizado para armazenar sequências de caracteres, como palavras, frases, etc. Para declarar uma variável do tipo string, é necessário utilizar aspas simples ou duplas.

```bash
nome = "Maria"
```

Variáveis lógicas

### Booleano (bool)

```bash
False or True
```

> Utilizado para armazenar valores lógicos, como verdadeiro (True) ou falso (False). Para declarar uma variável do tipo booleano, basta atribuir o valor True ou False.

```bash
possui_carro = True
```

## Regras para nomear variáveis em Python
Ao nomear variáveis em Python, é importante seguir algumas regras para garantir a legibilidade do código e evitar possíveis erros. A seguir, apresentaremos algumas diretrizes para nomear variáveis em Python:

1. Utilize nomes descritivos: escolha nomes que sejam significativos e descrevam o propósito da variável. Evite utilizar nomes genéricos ou abreviações que possam dificultar a compreensão do código.

2. Utilize letras minúsculas: é recomendado utilizar apenas letras minúsculas ao nomear variáveis em Python. O uso de letras maiúsculas pode gerar confusões, pois Python é sensível a maiúsculas e minúsculas.

3. Utilize underscores para separar palavras: para melhorar a legibilidade do código, utilize underscores (_) para separar palavras em nomes de variáveis compostos. Por exemplo, “nome_completo” em vez de “nomecompleto”.

4. Evite palavras reservadas: evite utilizar palavras reservadas da linguagem Python, como “if”, “for”, “while”, entre outras, como nomes de variáveis.

5. Seja consistente: mantenha uma convenção de nomenclatura consistente ao longo do código. Escolha um padrão e siga-o em todas as suas variáveis.

## Escopo de variáveis em Python e como evitar erros comuns

> O escopo de uma variável em Python define onde ela pode ser acessada e utilizada. Em Python, existem dois tipos de escopo de variáveis: escopo global e escopo local.

> Uma variável declarada fora de qualquer função ou bloco de código é considerada global e pode ser acessada de qualquer lugar do programa.

```bash
x = 10

def minha_funcao():
    print(x)

minha_funcao()  
    
10
```

> No entanto, se uma variável é declarada dentro de uma função ou bloco de código, ela é considerada local e só pode ser acessada dentro desse escopo.

```bash
def minha_funcao():
    y = 20
    print(y)

minha_funcao()  
    
20
```

> print(y)  # irá gerar um erro, pois a variável y é local e não está disponível fora da função

> Para evitar erros relacionados ao escopo de variáveis em Python, é importante estar atento aos seguintes pontos:

1. Evite utilizar variáveis globais quando não forem necessárias. O uso excessivo de variáveis globais pode dificultar a leitura e manutenção do código.

2. Utilize parâmetros de função para passar valores entre diferentes partes do programa. Dessa forma, você evita a necessidade de utilizar variáveis globais.

3. Evite utilizar o mesmo nome para variáveis globais e locais. Isso pode gerar confusões e erros no código.
Utilize o comando “global” para acessar variáveis globais dentro de uma função.

```bash
x = 10

def minha_funcao():        
    global x    
    x = 20    
    print(x)

minha_funcao()
    
20
```

> print(x)  # irá imprimir 20, pois a variável global x foi modificada dentro da função

> Seguindo essas boas práticas, você poderá utilizar variáveis em Python de forma eficiente e evitar erros relacionados ao escopo. Lembre-se sempre de escolher nomes descritivos para suas variáveis e seguir as regras de nomenclatura da linguagem. Assim, seu código será mais legível e fácil de ser mantido.

> Além dos tipos de variáveis mencionados acima, Python também possui outros tipos mais avançados, como listas, tuplas, dicionários, entre outros. Esses tipos de variáveis permitem armazenar conjuntos de valores relacionados de forma organizada.

Próximo passo... [Listas](listas.md)