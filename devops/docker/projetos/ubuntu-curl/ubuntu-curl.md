# Criar imagem

## Listar Containers

```bash
docker container ls -a

CONTAINER ID   images	COMMAND      CREATED         STATUS PORTS 				NAMES

1a4ac77a4275   ubuntu   "/bin/bash"  19 minutes ago  Exited (2) 15 minutes ago  busy_ganguly

```

## Commitar

```bash
docker commit <ID DO CONTAINER> ubuntu-curl
```

## Verificar a imagem

```bash
docker images

REPOSITORY		TAG		IMAGE ID		CREATED			SIZE
ubuntu-curl		latest 	a513376af3a3   	8 seconds ago   135MB
```

## Acessar a imagem

```bash
docker container run -it ubuntu-curl /bin/bash
```