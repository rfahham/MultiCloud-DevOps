# CP

Copia arquivos e diretório

```bash
cp <origem> <destino>
```

## Copiar um arquivo da pasta download para a pasta local

```bash
cp Downloads/<nome do arquivo> .
```

## Copiar o arquivo passwd do diretório /etc para o diretório /home/fabio/.

```bash
cp /etc/passwd /home/fabio/
```

Caso o diretório de trabalho atual já seja o /home/fabio, podemos também usar o ponto (.) para indicá-lo como local de destino, como a seguir:

```bash
cp /etc/passwd .
```

## Copiar o arquivo passwd do diretório /etc/ para o diretório /home/fabio/ renomeando a cópia como usuarios.txt:

```bash
cp /etc/passwd /home/fabio/usuarios.txt
```

## Copiar todos os arquivos cujo nome se inicia com a letra l do diretório /lib/ para o diretório atual:

```bash
cp /lib/l* .
```

## Criar um link simbólico no diretório atual para o arquivo /etc/group:

```bash
cp -s /etc/group .
```

Copiar arquivos com o comando cp no Linux

## Fazer uma cópia de backup de um arquivo no mesmo diretório, com outro nome (muito útil quando precisamos alterar arquivos de configuração do sistema):

```bash
cp passwd passwd.bkp
```

Como copiar arquivos no Linux com o comando cp

## Copiar o diretório /home/fabio/Documentos e todo o seu conteúdo recursivamente para o diretório /home/fabio/backup/:

```bash
cp -r /home/fabio/Documentos /home/fabio/backup/
```

## Copiar todo o conteudo de um diretorio para outro dentro da mesma origem

```bash
cp -r dir1/* /dir2
```

## A partir do diretório ~/labs/ qual comando deves utilizar para copiar todo o conteúdo do /etc?

```bash
labs> sudo cp -r /etc .
```
## Copiar já criando o novo diretorio com o conteúdo

```bash
cp -r dir1 dir2
```

## No cenário abaixo o usuário precisa copiar somente os arquivos de 01 á 05. Qual comando deverá ser utilizado?

Conteúdo do diretório:

arq01, arq02, arq03, arq04, arq05, arq10, arq20, arq30, arq40, arq50


```bash
cp arq0? ~/projetos
```
Exatamente, utilizamos o ? para substituir o caracter na posição específica.

CP

Copiar arquivos e/ou diretórios no linux

Sintaxe
$ cp [opções] arquivos_origem local_destino

Para copiar artefatos (arquivos e/ou diretórios) utilize o comando cp seguido do nome do artefato de origem e posteriormente informe o caminho de destino para ele.

O comando abaixo é um exemplo de uma cópia de um arquivo texto, onde o arquivo1.txt é o arquivo de origem e o destino é o arquivo2.txt.

	cp arquivo1.txt arquivo2.txt

Também podemos copiar dois arquivos para um diretório (pasta). No exemplo a seguinte estamos copiando o arquivo1.txt e arquivo2.txt para o diretório /tmp.

	cp arquivo1.txt arquivo2.txt /tmp

No próximo exemplo vamos copiar todos os arquivos com extensão java para o subdiretório fontes do diretório home do usuário.

	cp *.java ~/fontes

Copiar um diretório também é muito simples, basta informar o diretório de origem e destino, vamos copiar os arquivos do diretório teste para o diretório /tmp.

	cp teste /tmp

O comando acima não é recursivo, portanto os subdiretórios e arquivos de teste não são copiados para o diretório /tmp, para que isso seja possivel adicione o parâmetro -R logo após o comando cp.

	cp -R teste /tmp

Como já haviamos copiado o diretório teste para a pasta /tmp conflitos devem acontecer, para forçar que os arquivos sejam sobrescritos utilize o parâmetro -f.

	cp -fR teste /tmp

Mas caso você queira optar por uma opção de interatividade, onde para cada arquivo em conflito exiba uma opção de aceite ao não para sobrescrever utilize o parâmetro -i.

	cp -iR teste /tmp

Para atualizar o diretório /tmp com os novos arquivos do diretório teste utilize o parâmetro -u.

	cp -uR teste /tmp