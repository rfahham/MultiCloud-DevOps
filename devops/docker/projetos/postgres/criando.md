# Criando um banco de dados

```bash
docker container run -d -p 5432:5432 -e POSTGRES_DB=aula-docker -e POSTGRES_USER=iniciativa -e POSTGRES_PASSWORD=123456 postgres
```
