# Criando a imagem 

## A partir do Dockerfile

```bash
docker build -t rfahham/horadoqa:v1 .

docker build -t rfahham/horadoqa:latest .
```

## Executando a imagem localmente porta 80(http)

```bash
docker container run -d -p 80:80 rfahham/horadoqa:v1
```

## Executando a imagem localmente porta 443 (https)

```bash
docker container run -d -p 443:443 rfahham/horadoqa:v1
```

Testando...

Na porta 80 => http://localhost

Na porta 443 => https://localhost

## Enviando para o DockerHub

```bash
docker push rfahham/horadoqa:latest

docker push rfahham/horadoqa:v1
```

## Baixando a imagem do DockerHub

```bash
docker pull rfahham/horadoqa:v1

docker pull rfahham/horadoqa:latest
```

## Verificar os container que estão em execução

```bash
docker ps -a
```

## Parar a execução dos containers

```bash
docker container remove <CONTAINER ID> -f
```

## Remover a imagem local

```bash
docker rmi <IMAGE ID>
```
 