# Chave SSH

## Criar Chave Publica/Privada

id-rsa
id-rsa.pub

```bash 
ssh-keygen -t rsa -b 2048

Enter file in which to save the key (/home/usuario/.ssh/id_rsa):
Enter passphrase (empty for no passphrase ):
Enter same passphrase again:

```

OU com a criptografia 4096 e passando o nome

```bash
ssh-keygen -t rsa -b 4096 -f authorized_keys -C authorized_keys
```

## Exibir

```bash
cat ~/.ssh/id_rsa.pub 
```

No MACOS, pode copiar direto para a memória

```bash
cat ~/.ssh/id_rsa.pub | pbcopy
```
