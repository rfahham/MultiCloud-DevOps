# Criar uma imagem com NGINX

## Executar o nginx e liberar o terminal -d

```bash
docker container run -d nginx
```

## Listar os containers

```bash
docker container ls
```

## Acessar o NGINX

```bash
docker exec -it <ID do Container> /bin/bash
```

## Fazendo o bind

```bash
docker container run -d -p 8080:80 nginx
```

Acessar via browser

http://localhost:8080/


## Stopar a imagem

```bash
docker stop a00215fa1111
```

## Remover containers

```bash
docker container rm <nome do container>
```

## Apagar quando não estiver mais sendo usando

```bash
docker container run --rm hello-world
```

## CUIDADO !!!

Apagar todos os containers

```bash
docker container rm -f $(docker container ls -aq)
```