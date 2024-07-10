# Dicionário

Os dicionários em Python servem para que você possa criar listas no Python, só que com um rótulo.

Essa é uma forma muito mais eficiente do que utilizar apenas uma lista com as idades, pois dessa forma não saberia de quem é cada idade. Então temos uma lista organizada com esses rótulos para facilitar.

Um dicionário Python é uma forma de coleção de dados em que se guarda uma chave e um valor correspondente. É similar a um dicionário mesmo, em que há sempre um termo e uma tradução.

Assim, você encontra um valor pelo elemento correspondente — diferentemente de encontrar por um índice como em uma lista. O dicionário é uma forma de organização similar a um de banco de dados, mais completa e abrangente para diversas situações. 

Um dicionário grande e bem estruturado lembra muito um dataset, com os dados em um formato matricial, de tabela. Isso facilita o controle e o mapeamento desses dados. 

Uma forma fácil de visualizar um dicionário é uma lista telefônica. Nesse caso, as chaves são os nomes, elementos que demarcam a individualidade; ao passo que os números são os valores, elementos identificadores. 

## Criando um dicionário

```bash
vendedores = {
    "João": 1500,
    "Marlon": 5000,
    "Ana": 3500,
    "Andre": 5500,
    "Maria": 4000,
    "Luiz": 3000,
    }
```

## Imprimir as chaves do dicionário:

```bash
print(vendedores.keys())
```

## Imprimir os valores do dicionário:

```bash
print(vendedores.values())
```

## Imprimir pares chave-valor:

```bash
print(vendedores.items())
```

## Uma função utilizando o dicionário

```bash
meta = 3000

bateu_meta = [vendedor for vendedor in vendedores if vendedores[vendedor]>=meta]

print(bateu_meta)
```

Neste caso, a meta de vendas é de `3000`, a função percorre o dicionário e compara o valor de cada elemento com a meta, caso o resultado seja positivo, imprime o nome do vendedor.


Próximo passo... [Imprimindo](print.md)