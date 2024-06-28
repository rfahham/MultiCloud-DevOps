# Criando a imagem 

```bash
docker build -t workon -f Dockerfile .
```

## Executando a imagem

```bash
docker container run -d -p 8080:80 workon
```