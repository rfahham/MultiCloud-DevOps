# Docker Run

## Executa o container e destruído logo após o output

```bash
docker container run hello-world
```
## Habilitando no terminal 

## Ubuntu

```bash
docker container run -it ubuntu /bin/bash

Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
9c704ecd0c69: Pull complete 
Digest: sha256:2e863c44b718727c860746568e1d54afd13b2fa71b160f5cd9058fc436217b30
Status: Downloaded newer image for ubuntu:latest
root@2877e7356912:/# 
```

## NGINX

### Processo executado continuamente

```bash
docker container run nginx
```

### Processo executado em mode d

```bash
docker container run -d nginx
```

## Executando uma imagem em modo interativo

```bash 
docker container run -it ubuntu /bin/bash

root@1a4ac77a4275:/# ls
bin   dev  home  lib32  libx32  mnt  proc  run   srv  tmp  var
boot  etc  lib   lib64  media   opt  root  sbin  sys  usr

```

exit
