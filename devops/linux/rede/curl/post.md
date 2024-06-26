# POST

## Enviar dados para um serviço

```bash
curl --header "Content-Type: application/json" -d "{\"value\":\"node JS\"}" http://localhost:3000/test
```

–Header indica o tipo de conteúdo do corpo da postagem. Aqui está JSON.

-d é usado para enviar o conteúdo do corpo da postagem.