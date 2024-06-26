# Atualizar informações em um serviço

## PUT

Exemplo a ser usado cURL -X PUT para enviar uma solicitação PUT (atualização) para atualizar o nome e o email do usuário.

```bash
curl -X PUT -d 'name=mkyong&email=abc@gmail.com' http://localhost:8080/user/100
```


## Utilizando JSON
curl -X PUT -H "Content-Type: application/json" -d '{"name":"mkyong","email":"abc@gmail.com"}' http://localhost:8080/user/100

