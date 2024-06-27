# STD

## stdin

Entrada padrão dos comando linux

```bash
ls -la
```

## stdout

Saída padrão, resultado do stdin

Redirecionamento

```bash
ls -la > saida.txt
```
## stderr

Erro

```bash
ls -law
ls: option requires an argument -- 'w'
Try 'ls --help' for more information.
```

Redirecionamento do erro para um arquivo `log.txt`

```bash
ls -law 2> log.txt
```