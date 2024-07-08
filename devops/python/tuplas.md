# Tuplas

Tupla é um objeto assim como as listas. Ao invés de usarmos o [] usaremos () para criar uma dupla.

No exemplo, precisamos relacionar o nome ao valor, e com a Tupla será possível fazer a união das listas dessa forma.

Utilizando o for para passar por todos os elementos como vimos anteriormente vamos conseguir esse resultado, mas veja, que precisamos colocar o elemento i primeira lista e o elemento i da segunda lista.

Dessa forma temos uma tupla que nada mais é do que do que um objeto que nos permite armazenar várias informações associadas.

Neste caso estamos armazenando a loja com a sua respectiva venda para que essas informações fiquem sempre vinculadas.

    lojas = ['Rio de Janeiro','São Paulo', 'Curitiba']

    vendas = [10000, 20000, 50000]

    resultados=[]

Usando range para rodar o for. i é uma variável auxiliar que irá percorrer a posição 0, 1 e 2 da nossas listas. Range(3) indica serem 3 iterações:

```bash
for i in range(3):
   tupla=(lojas[i],vendas[i])
   resultados.append(tupla)
print(resultados)

[('Rio de Janeiro', 10000), ('São Paulo', 20000), ('Curitiba', 50000) ]
```

Para acessar um item dentro dessa tupla, pois temos um argumento a mais do que temos na lista.

O primeiro é a posição do conjunto e depois será a posição no conjunto, então nesse exemplo temos resultados [1][0].

Isso significa que vamos pegar o conjunto na posição 1 que é referente a São Paulo e 20000. Em seguida pegamos a posição 0 desse conjunto, que corresponde ao nome São Paulo.

Ou seja, primeiro informamos o conjunto que vamos analisar e em seguida qual elemento queremos desse conjunto!

```bash
print(resultados[1][0])

São Paulo
```

Próximo passo...[Dicionários](dicionario.md)

