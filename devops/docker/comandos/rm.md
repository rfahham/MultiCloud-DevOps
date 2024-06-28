# RM 

## Remover um container

```bash
docker container rm <ID DO CONTAINER>
```

## Remove todos os containers

```bash
docker container rm -f $(docker container ls -aq)
```