# TCPDUMP

Como capturar os pacotes das interfaces de rede

O tcpdump é capaz de capturar os pacotes das interfaces, com isso você consegue fazer uma analise e ver o que os usuários da sua rede estão acessando.

## Instalação

```bash
apt install tcpdump
```bash

## Lista as interfaces disponíveis

```bash
tcpdump -D
```
 
## Começa a exibir os pacotes que estão passando por essa interface "enp0s3"

```bash
tcpdump -i enp0s3
```
 
## Grava em um arquivo

```bash
tcpdump -i enp0s3 -w pacotes.txt
```
 
## Captura os pacotes apenas utilizando o IP

```bash
tcpdump src 192.168.1.113
```

## Captura apenas 70 pacotes

```bash
tcpdump -c 70 -i enp0s3
```

## Somente pacotes maiores que 100 bytes 

```bash
tcpdump -i enp0s3 greater 100
```
PS: para saber mais comandos dessa ferramentas digite "man tcpdump"