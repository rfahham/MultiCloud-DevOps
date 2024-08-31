# Comandos WSL

https://learn.microsoft.com/pt-br/windows/wsl/basic-commands

Listar as distribuições disponíveis

```bash
wsl -l -v
```
Listar e Instalar uma distribuição

```bash
wsl -l -o
```

Mudar a distribuição padrão

```bash
wsl -d <selecionar a distribuição>
```

Start 

```bash
wsl -t <nome da distribuição>
```

Stop

```bash
wsl --shutdown

ou 

wsl -t <nome da distribuição>

```

Desinstalar uma distribuição

```bash
wsl -t <nome da distribuição>
```