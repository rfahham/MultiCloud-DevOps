# CAT

## Mostra na tela o conteúdo de um arquivo

```bash
cat arquivo.txt
```

    What is Lorem Ipsum?
    
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

## Mostrar linhas e texto 

```bash
cat -n arquivo.txt
```

    1  What is LOREM Ipsum?
    2
    3  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    4
    5  Wed Jun 26 09:58:38 -03 2024

## Mostrar as 3 primeira linhas e texto 

```bash
cat -n 3 arquivo.txt
```


## Editar um arquivo direto na linha de comando 

```bash
cat >> arquivo.txt
```

Finalizar com ctrl + c
