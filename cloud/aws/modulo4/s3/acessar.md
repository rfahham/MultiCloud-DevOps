# Acessar o Bucket

Criar URL Temporária

## Criar um grupo: `grupo-s3-read-only`

Police

AmazonS3readonly

## Criar um usuário

<div align="center">

![Criando usuário para acessar o Objeto](./images/usuario-s3.png)

</div>

## Adicionar ao Grupo `grupo-s3-read-only`

<div align="center">

![Adicionar ao grupo](./images/grupo-bucket.png)

</div>


<div align="center">

![Revisar a criação do usuário](./images/revisar.png)

</div>

## Criar Chave de Acesso

<div align="center">

![Criar Chave de Acesso do Usuário](./images/chave.png)

</div>

## Práticas

<div align="center">

![Práticas utilizadas para acesso](./images/praticas.png)

</div>

## Descrição da chave

<div align="center">

![Descrição da Chave](./images/praticas.png)

</div>

Baixar a `CHAVE`

Acessar os dados do arquivo com as credenciais

```bash
cat user-s3-read-only_accessKeys.csv
```
## Configurar o profile com as informações da credencial

```bash
aws configure --profile user-s3-read-only

AWS Access Key ID [************************]: 
AWS Secret Access Key [************************]: 
Default region name [us-eats-1]: us-east-1
Default output format [json]: json
```

## Visualizar o arquivo com as Credenciais

```bash
[user-s3-read-only]
aws_access_key_id = 
aws_secret_access_key = 
```

## Gerar a url para o arquivo, com expiração em 120 segundos

```bash
aws s3 presign s3://<nome do bucket>/<nome do objeto> --profile user-s3-read-only --expires-in 120
```

OBS.: As chaves só podem ser removidas pelo usuário `ROOT`