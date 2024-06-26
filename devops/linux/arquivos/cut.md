# CUT

## Remover coluna de um arquivo

A segunda coluna

```bash
cat <arquivo de origem> | cut -d ";" -f 2 > <arquivo destino>
```

## Seleciona a sétima coluna de um linha e joga para um arquivo novo

```bash
cat <arquivo de origem> | cut -d ";" -f 7 > <arquivo destino>
```

```bash
cat output-100k-qa3-6712-oct-2021.csv | cut -d ";" -f 7 > 100k_glbids.csv
```


cut -c22-162 cenario2_videos > novo_cenario2_videos.csv