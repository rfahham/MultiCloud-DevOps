# MV

## Move arquivos e diretórios

```bash
mv curriculum.odt curriculum.txt
```

## Utilizado também para renomear

```bash
mv <nome antigo> <nome novo>
```

## Mover todo o conteudo do diretorio dir1 para o dir4

```bash
mv dir1/* dir4
```

## Mover o arquivo passwd do diretório atual para o subdiretório Documentos:

```bash
mv passwd ./Documentos/
```

Mover o arquivo passwd do diretório atual para o subdiretório Documentos, o qual já contém um arquivo com o mesmo nome – nesse caso, queremos fazer um backup do arquivo de destino:

```bash
mv --backup passwd ./Documentos/
```