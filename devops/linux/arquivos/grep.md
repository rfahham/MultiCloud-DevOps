# GREP

Utilizado para fazer uma busca específica

## Procurar pela palavra LOREM

```bash
cat arquivo.txt | grep "Lorem"

grep "Lorem" arquivo.txt
```

## Busca recursiva

```bash
cat arquivo.txt | grep -r "lorem" *

grep -r "lorem" * arquivo.txt
```

## Procurar pela palavra lorem, ignorando o case sensitive

```bash
cat arquivo.txt | grep -i "lorem"

grep -i "lorem" arquivo.txt
```

## Procurar pela palavra lorem, ignorando o case sensitive e contando as linhas 

```bash
cat arquivo.txt | grep -in "lorem"

grep -in "lorem" arquivo.txt
```
