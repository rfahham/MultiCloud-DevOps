# Listas

Para criar listas no Python é necessário:

- Utilizar o símbolo [] (colchetes) para as listas;
- Armazenar a lista em uma VARIÁVEL;
- Separa itens da lista pela vírgula;

Exemplo com uma lista de compras

```bash
lista_compras = ['banana','laranja','maçã']
print(lista_compras)

['banana', 'laranja', 'maçã']
```

Acessando um ítem da lista

Buscando a posição [1]:

```bash
print(lista_compras[1])

laranja
```

Bem observado !!! 

O primeiro ítem da lista começa com `[0]`, dessa forma o prímeri ítem da lista será: `banana` e assim sucessivamente.

Podemos usar os números negativos permite acessar a lista na ordem inversa:

```bash
print(lista_compras[-1])

maçã
```

## Métodos do Python para utilizar nas listas

Agora vamos analisar alguns métodos do Python como: 

- append e insert (para inserir informações na lista); 
- del, pop e remove (para remover itens da lista).

### Para adicionar um item a lista:

- .append(): adiciona o item ao final da lista;
- .insert(): insere um item na lista na posição indicada

### Para deletar um item da lista:

- del: remove um item da lista baseado na posição indicada;
- .remove(): remove um item baseado no seu valor e não na sua posição;
- .pop(): remove da lista_compras o último item, mas não o exclui.

No exemplo abaixo incluiremos o item `carro` a nossa lista_compras com o `.append()`:

```bash 
lista_compras.append('carro')
print(lista_compras)

['banana', 'laranja', 'maçã', 'carro']
```

Já no código abaixo, adicionamos `carro` à lista em uma posição indicada, com `.insert()`:

```bash
lista_compras.insert(1,'carro')
print(lista_compras)

['banana', 'carro', 'laranja', 'maçã','carro']
```

Utilizando `del` para remover item com base na posição indicada:

```bash 
del lista_compras[3]
print(lista_compras)

['banana', 'carro', 'laranja', 'maçã']
```

Removendo um item com base no seu valor e não na sua posição, com o `.remove()` (ATENÇÃO! retira apenas a primeira ocorrência e não todas):

```bash
lista_compras.append('carro')
print(lista_compras)

['banana', 'carro', 'laranja', 'maçã', 'carro']
```

```bash
lista_compras.remove('carro')
print(lista_compras)

['banana', 'laranja', 'maçã', 'carro']
```

Utilizando `.pop()`, iremos remover o último item da `lista_compras`, mas sem excluí-lo. Nesse caso, o valor `carro` será armazenado na variável item:

```bash
item = lista_compras.pop(-1)
print(item)

carro
```

Após retirar da lista_compras, adicionamos `carro` na nossa lista_sonhos:

```bash
lista_sonhos.append(item)
print(lista_sonhos)

['carro']
```

É comum que as listas se iniciem sem nenhum valor. Como se fosse um papel em branco que gradualmente você adiciona informações.

Para criarmos vamos usar novamente o colchetes, mas sem nenhum item:

## Criando a lista tarefas

```bash
tarefas = []
```

## Usando o Input() vamos coletar do usuário qual a tarefa a ser adicionada.

```bash
atividade = input('Insira uma atividade: ')
```

Adiciona a tarefa indicada pelo usuário a lista de tarefas

```bash
tarefas.append(atividade)

Insira uma atividade: Curtir o video de listas da Hashtag

print(tarefas)

['Curtir o video de listas da Hashtag']
```

## Inserir vários ítens na Lista

```bash
while atividade:
   atividade = input(Insira uma atividade: ')
   tarefas.append(atividade)
Insira uma atividade: Me inscrever no canal da Hashtag
Insira uma atividade: Fazer o download do minicurso de Python
Insira uma atividade: Compartilhar o vídeo da Hashtag
Insira uma atividade
```

## Imprimindo a lista de tarefas:

```bash
for tarefa in tarefas:
   print(tarefa)

Curtir o video de listas da Hashtag
Me inscrever no canal da Hashtag
Fazer o download do minicurso de Python
Compartilhar o vídeo da Hashtag
```


Próximo passo...[Tuplas](tuplas.md)