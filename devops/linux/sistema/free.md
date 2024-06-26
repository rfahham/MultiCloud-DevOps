# FREE

Mostra a utilização da memória

```bash
free
               total        used        free      shared  buff/cache   available
Mem:         8056868     1034616     6605060       32496      417192     6704628
Swap:        2097152           0     2097152
```

Mostra a utilização da memória em Gigabytes

```bash
free --giga
               total        used        free      shared  buff/cache   available
Mem:               8           1           6           0           0           6
Swap:              2           0           2
```

Mostra em formato humano

```bash
free -h
               total        used        free      shared  buff/cache   available
Mem:           7.7Gi       1.0Gi       6.3Gi        31Mi       408Mi       6.4Gi
Swap:          2.0Gi          0B       2.0Gi
```

Para mais detalhes

```bash
free -help
```