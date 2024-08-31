# Instalar MySQL

Para instalar o MySQL em uma distribuição do Linux em execução no WSL, siga as instruções em Como instalar o MySQL no Linux nos documentos do MySQL. Talvez seja necessário primeiro habilitar o suporte ao systemd no arquivo de configuração do wsl.conf.

Exemplo usando a distribuição do Ubuntu:

Abra a linha de comando do Ubuntu e atualize os pacotes disponíveis: 

```bash
sudo apt update
```

Depois que os pacotes forem atualizados, instale o MySQL com: 

```bash
sudo apt install mysql-server
```

Confirme a instalação e obtenha o número de versão: 

```bash
mysql --version
```

Iniciar o MySQL Server/verificar o status: 

```bash
systemctl status mysql
```

Para abrir o prompt do MySQL, insira: 

```bash
sudo mysql
```

Para ver quais bancos de dados você tem disponíveis, no prompt do MySQL, insira: 

```bash
SHOW DATABASES;
```

Para criar um novo banco de dados, insira: 

```bash
CREATE DATABASE database_name;
```

Para excluir um banco de dados, insira:

```bash
DROP DATABASE database_name;
```