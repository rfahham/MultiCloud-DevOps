# Projeto BIA-DEV

Acessar o CloudShell na AWS

## Clonar o projeto

```bash
git clone https://github.com/henrylle/bia
```

## Acessar diretório dos scripts

```bash
cd bia/scripts
```

## Criar a role

```bash
./criar_role_ssm.sh
{
    "Role": {
        "Path": "/",
        "RoleName": "role-acesso-ssm",
        "RoleId": "AROAQ3EGUMIUIOOKZJH2B",
        "Arn": "arn:aws:iam::058264412712:role/role-acesso-ssm",
        "CreateDate": "2024-08-06T21:26:46+00:00",
        "AssumeRolePolicyDocument": {
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Effect": "Allow",
                    "Principal": {
                        "Service": "ec2.amazonaws.com"
                    },
                    "Action": "sts:AssumeRole"
                }
            ]
        }
    }
}
{
    "InstanceProfile": {
        "Path": "/",
        "InstanceProfileName": "role-acesso-ssm",
        "InstanceProfileId": "AIPAQ3EGUMIUDU7AAS23N",
        "Arn": "arn:aws:iam::058264412712:instance-profile/role-acesso-ssm",
        "CreateDate": "2024-08-06T21:26:47+00:00",
        "Roles": []
    }
}
```

## Adicionar permissões para o role-acesso-ssm

- AmazonEC2ContainerRegistryFullAccess
- AmazonEC2FullAccess

Verificar acesso

```bash
aws ecr describe-repositories
{
    "repositories": []
}
```

## Criar Security-Group

No Console da AWS, acessar o EC2 e depois em Securiy-Group, adicionar o `bia-dev`

### Detalhes básicos

Nome do grupo de segurança: `bia-dev`

Descrição: `Acesso bia-dev`

VPC: `Padrão`

### Regras de entrada

Tipo: TCP personalizado

Tipo de origem: Qualquer local-IPv4

Intervalo de portas: `3001`

Descrição: Acesso `bia-dev` para o mundo

### Regras de saída

Tipo: TCP personalizado

Tipo de origem: Personalizado

Intervalo de portas: 

Descrição:


## Validar recursos da Zona A

```bash
./validar_recursos_zona_a.sh
[OK] Tudo certo com a VPC
[OK] Tudo certo com a Subnet
[OK] Security Group bia-dev foi criado
 [OK] Regra de entrada está ok
 [OK] Regra de saída está correta
[OK] Tudo certo com a role 'role-acesso-ssm'
```

## Criar a instância via script

```bash
 ./lancar_ec2_zona_a.sh
```

## Acessar a instância via SSM

Clicar na instância criada `bia-dev` e depois em `Conectar`. procurar por Gerenciador de sessões e finalmente clicar em `conectar`

## Trocar para o usuário `ec2-user`

```bash
sudo su ec2-user
[ec2-user@ip-172-31-95-38 ~]$
```

## Acessar a home

```bash
cd ~
```

## Verificar se o docker está instalado

```bash
docker --version
Docker version 20.10.17, build 100c701
```

## Verificar se o docker compose está instalado

```bash
docker compose version
Docker Compose version v2.23.3
```

## Subindo o projeto

Clonar o projeto

```bash
git clone https://github.com/henrylle/bia
```
Na pasta bia/Dockerfile

```bash
docker compose up -d

✔ Network bia_default  Created  0.2s
✔ Volume "bia_db"      Created  0.0s
✔ Container database   Started  0.1s
✔ Container bia        Started  0.0s
```

## Acessar via browser

Pegar o IP Público:3001
