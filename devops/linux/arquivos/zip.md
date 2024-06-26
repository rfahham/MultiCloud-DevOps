# ZIP

## Para compactar um arquivo

$ zip (nome do arquivo depois de ser zipado) (arquivo a ser zipado)

ex.: zip arquivo.zip arquivo.txt

## Para visualizar conteudo do arquivo.zip

$ zipinfo nome do arquivo.zip

## Para acrescentar mais arquivos ao arquivo.zip criado 

$ zip arquivo.zip (nome do arquivo que vai ser adicionado)

## Para apagar um arquivo dentro do arquivo zipado

$ zip arquivo.zip (nome do arquivo que vai ser apagado)

## Para zipar um diretório inteiro - Documentos

$ zip (nome do arquivo depois de ser zipado) -r ./Documentos



---------------------------------------------------------------


Para usar o Unzip

Mostrar o conteudo do arquivo zipado 

$ unzip -l nome do arquivo.zip

Verificar se o arquivo zipado está ok 

$ unzip -t nome do arquivo zipado 

Para descompactar o arquivo.zip 

$ unzip nome do arquivo zipado 
