# SED

## Imprimir um intervalo de linhas de um arquivo

```bash
cat users.csv | sed -n '1,100000 p' > user_100k.csv
```

## trocar caracteres de um arquivo, neste caso aspas

```bash
cat arquivo.txt | sed 's/"//g' > arquivo_semaspas2.txt
```

## Outros exemplos

sed -i 's/g1.qa.globoi.com/g1.globo.com/g' *

grep -r "g1.qa.globoi.com" *

grep -r "g1.globo.com" 

sed -i '' 's/e2-standard-8/e2-standard-16/g' terraform.tfvars


gcloud compute instances list | tail -n 1 | awk '{print $3}'

http://shellscriptx.blogspot.com/2016/12/imprimindo-intervalo-de-linhas-de-um-arquivo.html

https://www.vivaolinux.com.br/dica/Sed-como-salvar-alteracoes-no-arquivo

## Queremos usar o sed para trocar Windows por Linux:

```bash
sed 's/Windows/Linux/' frase.txt

Viva o Linux!
```

## Embora o resultado do comando seja o desejado, se conferirmos o conteúdo do arquivo frase.txt ainda temos o original:

```bash
cat frase.txt

Viva o Windows!
```

## Para fazer o sed gravar as alterações basta acrescentar o argumento "-i":

```bash
sed -i 's/Windows/Linux/' frase.txt

Viva o Linux!
```

E podemos fazer ainda melhor, que é salvar as alterações no arquivo e de quebra gerar um arquivo de backup. 
O argumento -i pode ser acompanhado de um sufixo de arquivo de backup, como por exemplo .bak ou .old, ou qualquer outro sufixo de sua escolha.

```bash
sed -i.bak 's/Windows/Linux/' frase.txt
```bash