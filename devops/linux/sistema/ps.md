# PS

## Listar os processos

```bash
ps -aux

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.1 167196 14692 ?        Ss   Jun19  18:37 /sbin/init
root           2  0.0  0.0   2476  1500 ?        Sl   Jun19   0:00 /init
```

## Verificar os processos e filtrar por um serviço específico

```bash
ps -ef | grep nginx
```

## Matar um processo

```bash
kill 9 processo
```

```bash
netstat -ntlp
```

