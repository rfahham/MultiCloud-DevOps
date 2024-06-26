# GZIP

gzip [opções] [arquivos]

Descrição
Este comando compacta/descompacta arquivos.
O arquivo (ou conjunto de arquivos) é substituído por um arquivo compactado com a extensão .gz. Entretanto, são mantidos o dono, as permissões e as datas de modificação do arquivo.
Algumas opções do comando
-c : grava o resultado na saída padrão e mantém o arquivo original inalterado.
-d : descompacta (igual ao comando gunzip).
-l : lista informações sobre os arquivos compactados/descompactados.
-r : compacta/descompacta recursivamente (navega a estrutura de diretórios recursivamente).
-t : verifica a integridade do arquivo compactado.


Para compactar o arquivo teste1.txt, basta digitar

```bash
gzip teste1.txt
```

Neste caso, o arquivo teste1.txt.gz substitui o arquivo original.

É também possível concatenar vários arquivos juntos. Os comandos

```bash
gzip -c teste1.txt > teste.gz
gzip -c teste2.txt >> teste.gz
```

criam o arquivo teste.gz que contém os arquivos teste1.txt e teste2.txt.

Para descompactar o arquivo acima, basta digitar

```bash
gzip -d teste
```
ou

```bash
gunzip teste
```

O arquivo teste é a concatenação dos arquivos teste1.txt e teste2.gz. Portanto, podemos também criar o arquivo teste com o comando

```bash
cat teste1.txt teste2.txt > teste
```

Observações
São exemplos de comandos para agrupar e/ou compactar arquivos:  ar, tar, zip, compress e bzip2.