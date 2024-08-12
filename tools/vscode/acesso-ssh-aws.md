# Acesso do VSCODE na instância na AWS

Pré-requisitos

Na AWS

- Criar o Security Group para acesso SSH com o IP local "acesso-ssh-local"
- Criar a key-pair ".pem" (EC2)
- Alterar permissão (chmod 400 "acesso-ssh-local.pem")
- Criar a instância com userdata

No VSCODE

Pegar o caminho da chave, pwd

- Instalar a extensão `Remote SSH` no VSCODE

- Configurar
    - Connet to host ...
    - Add New SSH Host ...

    ou configurar diretamente no arquivo

    - Connet to host ...
    - Configure SSH Hosts ...
    - /User/usuario/.ssh/config
        Host <nome do host>
            Hostname <endereço da instância>
            User ec2-user
            IdentityFile <caminho onde está a chave .pem>

- Clicar em Conectar

No windows dá erro !!!







