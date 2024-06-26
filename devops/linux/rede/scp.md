# SCP

Copiar de arquivos via SSH entre dois servidores remotos

Se a cópia for só de arquivos use o /* se tiver pasta use o -r no scp.

```bash
scp usuario1@host1:path/* usuario2@host2:path/*

scp -r usuario1@host1:path usuario2@host2:path

scp arquivo usuario@servidor:/home/usuario

scp "nome do arquivo / diretório " "nome do usuário"@"endereço ip da máquina":/"destino"

scp -rp ./* root@cmaq24mp23ld06.globoi.com:/mnt/k6

scp monitor-tsuru-bionic-beaver.sh root@10.224.194.12:/opt/qa2
```
