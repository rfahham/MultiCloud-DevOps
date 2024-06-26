# Chave SSH

## Criar Chave Publica/Privada

https://pplware.sapo.pt/tutoriais/criar-chave-ssh-no-linux/

id-rsa
id-rsa.pub

```bash 
ssh-keygen
```

## Exibir

```bash
cat ~/.ssh/id_rsa.pub 
```

No MACOS, pode copiar direto para a memória

```bash
cat ~/.ssh/id_rsa.pub | pbcopy
```


## Pra conectar na VM ir na instância destino e adicionar a chave pública.

$ cat rsa_pub

No console, Detalhes da VM

Editar

SSH KEYS

Copiar a chave pública.
