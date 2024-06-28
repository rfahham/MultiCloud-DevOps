# Criar uma imagem com NGINX

## Executar o nginx e liberar o terminal -d

```bash
docker container run -d nginx
```

## Acessar o NGINX

```bash

docker container ls


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


docker container rm <nome do container>

Apagar quando não estiver mais sendo usando

docker container run --rm hello-world


CUIDADO !!!

Apagar todos os containers

docker container rm -f $(docker container ls -aq)