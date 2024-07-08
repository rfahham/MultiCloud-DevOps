# PRINT

Trata-se de uma função que permite o output das operações que podem ser realizadas com o PYTHON.

É importante para a validação dos resultados. 

A forma mais simples é

```bash
print()
```
O print pode expor o resultado de quase todas as tarefas.

Imprimir um texto, a `string`, precisa ser envolta com aspas `' '`, podem ser simples ou duplas `" "`.

```bash
print("Hello World !")

Hello World !
```

O print pode imprimir o valor de uma variável

```bash
nome = "Ricardo"

print(nome)

Ricardo
```

O print pode imprimir o valor de uma operação aritimética

```bash
print(1+1)

2
```
Concatenando variáveis

```bash
nome = "Ricardo"

sobrenome = "Fahham"

idade = 53

print(nome, sobrenome, idade)
```

Existe outras forma de uso mais sofisticado para o print

Ao utilizar uma f-string, podemos passar a variável dentro do texto, isso nos permite escrever um único texto, sem precisar separar as informações por vírgulas.

Sem o f-string

```bash
print("Meu nome é", nome, sobrenome, "e tenho", idade, "anos")
```

Com f-string

```bash
print(f"Meu nome é {nome} {sobrenome} e tenho {idade} anos")
```

Porém, dentro da função print, podemos definir o parâmetro sep. Esse parâmetro nos permite escolher qual separador queremos utilizar dentro daquele print.

Você pode definir esse separador sendo um caractere, como os dois pontos, ou sendo um caractere especial como o \n, que em Python é utilizado para representar uma quebra de linha no texto, começar uma nova linha.

## Utilizando um separador

```bash
faturamento = 10000
custo = 6000
print("Faturamento", faturamento, sep=":")
print("Custo", custo, sep=":")
print("Lucro", faturamento - custo, sep=":\n")
```

##  Utilizando o parâmetro End

Insere o `;` depois de cada impressão

```bash
faturamento = 10000
custo = 6000
print("Faturamento:", faturamento, end="; ")
print("Custo:", custo, end="; ")
print("Lucro", faturamento - custo)

Faturamento: 10000; Custo: 6000; Lucro 4000
```

## Criando um Cronômetro Regressivo

Apesar de ser uma função básica, é importante conhecer as principais características e funcionamentos do Print, pois podemos utilizá-las para criar algumas coisas interessantes, como um temporizador, combinando print() com a biblioteca time.

Podemos usar a biblioteca time para aguardar 1 segundo entre cada print() e o parâmetro end para definir o caractere especial \r, fazendo com que o cursor volte para o início do texto após cada impressão, permitindo a substituição do texto anterior pelo próximo.

```bash
import time

print("10", end="\r")
time.sleep(1)
print("09", end="\r")
time.sleep(1)
print("08", end="\r")
time.sleep(1)
print("07", end="\r")
time.sleep(1)
print("06", end="\r")
```

Próximo passo... [Funções]()