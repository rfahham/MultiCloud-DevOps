# Listar os Containers

Que estão em execução

```bash
docker container ls

CONTAINER ID   IMAGE     COMMAND       CREATED              STATUS              PORTS     NAMES
2877e7356912   ubuntu    "/bin/bash"   About a minute ago   Up About a minute             quizzical_lamarr
```

Que foram executados, status exited

```bash
docke container ls -a
```

Listar só os IDS

```bash
docker container ls -aq
```