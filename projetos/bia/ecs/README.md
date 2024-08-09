# Cluster

Projeto

- Bia-web
- Bia-db
- Bia-dev

1 - Criar Segurity group

Para que tanto a Bia-dev quando a Bia-web tenham acesso a Bia-db

2 - Criar o RDS

OBS.: Não esquecer de salvar a senha

3 - Transferiar a imagem da Bia-dev para ERC

## Listar as images

Dentro da instância

```bash
docker images

bia-server
```

## Criar repositório no ECR

Na AWS procurar por ECR
Create Repository
Private
Name: bia

## Push commands

Autentication:

```bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --passwprd=stdin <repository name>
```

Buil:

```bash
docker build -t bia .
```

TAG:

```bash
docker tag bia:latest <repository name>/bia:latest
```

PUSH:

```bash
docker push <repository name>/bia:latest
```

## Copiar os scripts para a pasta de trabalho "bia"

```bash 
cp scripts/ecs/unix/build.sh .
cp scripts/ecs/unix/deploy.sh .
```

## Antes de rodar o script

Trocar a variável ECR_REGISTRY="SEU_REGISRY"




## Dominio

Route53 - Serviço de gerenciamento de DNS na AWS

Criar o hostzone

Domain name: nome do dominio

public host zone

Cria entrada NS e SOA



ACM - Amazon Certificate Manager