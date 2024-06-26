# NETCAT

http://netcat.sourceforge.net/

O Comando netcat no Linux ou nc é um utilitário utilizado para fazer “quase tudo” quando se trata dos protocolos TCP e UDP. Ele pode ser usado para abrir conexões TCP, enviar pacotes UDP, escutar qualquer porta TCP ou UDP e escanear as portas abertas de um host.

Ele pode ser útil para servir de proxy simples de TCP, escrever scripts simples de HTTP cliente e servidores, testar processos servidores de rede (daemons) e muitas outras funções.

Veja alguns exemplos de uso do netcat:

Para se conectar em algum host:porta utilizando o netcat, você deve fornecer o endereço do host e a porta. É útil para ver se um determinado servidor está respondendo:

```bash
nc google.com 80
get ../..
HTTP/1.0 400 Bad Request
Content-Type: text/html; charset=UTF-8
Content-Length: 1419
Date: Tue, 14 Apr 2015 02:11:11 GMT
Server: GFE/2.0
```

Para utilizar o netcat como um processo que escuta em determinada porta e enviar o resultado para um arquivo. É útil para saber o que uma aplicação cliente está mandando para um determinado servidor:

```bash
nc –l –p 6565 > /tmp/arquivo.tmp
```

O netcat pode até mesmo ser utilizado para escutar em uma determinada porta e jogar o resultado no terminal:

```bash
nc -l -vv 4343
```

O netcat pode ser utilizado para saber quais portas estão abertas em um determinado host. É útil para verificar se um determinado serviço deveria ou não estar escutando na rede:

```bash
nc  -vv  -w1 google.com 20-443
```

Essa ferramenta pode tanto se comportar como uma aplicação servidora ou cliente, de modo a testar os serviços oferecidos por um determinado servidor ou cliente.


(or nc in short)

# yum install nc                  [On CentOS/RHEL]
# dnf install nc                  [On Fedora 22+]
$ sudo apt-get install netcat     [On Debian/Ubuntu]

nc -zv 192.168.1.15 22

No comando acima, o sinalizador:

-z– configura o nc para simplesmente procurar por daemons de escuta, sem realmente enviar quaisquer dados para eles.
-v– ativa o modo detalhado.

O próximo comando irá verificar se as portas 80 , 22 e 21 estão abertas no host remoto 192.168.5.10 (podemos usar o nome do host também):
nc -zv 192.168.56.10 80 22 21

nc-zv 192.168.56.10 20-80

https://www.tecmint.com/check-remote-port-in-linux/