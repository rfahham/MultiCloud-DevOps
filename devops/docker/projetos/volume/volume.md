Copiando um arquivo para o container

```bash
docker container run -d -p 8080:80 -v "$(pwd)/index.html:/usr/share/nginx/html/index.html" nginx
```

