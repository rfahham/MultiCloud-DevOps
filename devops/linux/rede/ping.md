# PING

## Instalando o ping no ubuntu

```bash
apt install iputils-ping -y
```

## Verificar se um endereço está ativo/respondendo

```bash
ping <host>

ping www.globo.com
PING home-globo.cache.gcp.cloud.globo (186.192.81.5) 56(84) bytes of data.
64 bytes from 186-192-81-5.prt.globo.com (186.192.81.5): icmp_seq=1 ttl=242 time=20.0 ms
64 bytes from 186-192-81-5.prt.globo.com (186.192.81.5): icmp_seq=2 ttl=242 time=25.4 ms
64 bytes from 186-192-81-5.prt.globo.com (186.192.81.5): icmp_seq=3 ttl=242 time=21.5 ms
```