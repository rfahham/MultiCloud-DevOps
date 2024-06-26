# Acesso SSH nas instâncias

> Instância pública

```bash
ssh -i <chave.pem> <IP da instância>
```

> Instância privada

> Copiar a chave .pem para a instância privada

```bash
scp -i <chave.pem> <chave.pem> <IP da instância>:/homer/usuário/.ssh/chave.pem
```

Acessar da instância pública a instância privada (Jump Server)

```bash
ssh <chave.pem> <IP da instância privada>
```

Atualizar a lista de repositório 

```bash
sudo apt update
```