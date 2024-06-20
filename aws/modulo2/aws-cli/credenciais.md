# Configurar credenciais

Usar as credenciais do usuário geradas ao criar o usuário.

Este procedimento ajuda na questão de trabalhar com projetos diferentes

```bash
aws configure --profile terraform
```

Preencher:

    AWS Access Key ID [None]:
    AWS Secret Access Key [None]:  
    Default region name [None]: 
    Default output format [None]: json

## Listar as Credenciais configuradas

    cat ~/.aws/credentials
    [default]
    aws_access_key_id = 
    aws_secret_access_key = 
    [terraform]
    aws_access_key_id = 
    aws_secret_access_key =

## Listar os Buckets(s3) com a credencial default

```bash
aws s3 ls    
```

Caso a configuração das credenciais estiver errada o output sera:                    

> An error occurred (InvalidAccessKeyId) when calling the ListBuckets operation: The AWS Access Key Id you provided does not exist in our records.

Se a configuração estiver correta o output será vazio.

## Listar os Buckets(s3) especificando uma credencial 

```bash
aws s3 ls --profile terraform
```