# RM

## Remove arquivo

```bash
rm <nome do arquivo>
```

## Remove o diretório

```bash
rm -r <nome do diretório> - caso o diretório esteja vazio

rm -rf <nome do diretório> - caso o diretório tenha conteúdo que possa ser apagado
```

## Excluir diretórios vazios

Use o comando find para facilitar o trabalho:

```bash
find . -type d -empty -exec rmdir -v {} +
```

A opção -type d é para buscar somente diretórios, -empty seleciona os vazios, o -exec rmdir {} executa o comando rmdir para deletar.

O comando rmdir garante que o diretório está vazio antes de deletar.