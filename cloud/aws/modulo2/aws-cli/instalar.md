# AWS-CLI

Acessando os serviços da AWS via linha de comando

## Instalar o AWS-CLI

Instalar o PIP

```bash
sudo apt install python-pip -y
```

Instalar o cli da Amazon

```bash
pip install awscli

sudo apt install awscli -y
```

- Linux
- Mac
- Windows

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


## Verificar local de instalação do AWS-CLI

```bash
which aws
```
> /usr/local/bin/aws

## Verificar a versão do AWS-CLI

```bash
aws --version    
```

> aws-cli/2.16.8 Python/3.11.8 Linux/5.15.153.1-microsoft-standard-WSL2 exe/x86_64.ubuntu.22

```bash
aws --version | cut -d / -f2 | cut -d ' ' -f1
```

> 2.16.8