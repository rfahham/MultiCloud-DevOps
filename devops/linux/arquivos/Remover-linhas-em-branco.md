# Remover linhas em branco

## Com Sublime

Find
Replace...
Habilitar expressão regular
Find: ^[\n]
Replace: em branco
Replace All


## Com Shell Script

```bash
sed '/^$/d' arquivo.txt > novoarquivo.txt
ou
awk 'NF>0' arquivo.txt > novoarquivo.txt
```

## Com Bash

```bash
grep -v "^$" arquivo.txt > novoarquivo.txt
```

## Com python

with open("arquivo.txt", "r") as f:
   linhas = f.read().splitlines()

   for linha in linhas:
       print(linha)