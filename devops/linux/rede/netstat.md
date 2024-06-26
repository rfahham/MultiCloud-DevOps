# NETSTAT

Saber o que está sendo executado pelas portas

## Instalar

```bash
sudo apt install netstat
```

## Pesquisando portas

```bash 
netstat -atunp

netstat -tulpn 
```

## Pode grepar pela porta

```bash
netstat -tulpn | 80
```