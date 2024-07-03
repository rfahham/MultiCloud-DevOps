# MÓDULO 3

## VPC - Virtual Private Cloud

A VPC é composta de...

- Duas subnetes
    - Pública - acesso para a instância pela internet 
        - Aplicação WEB 
    - Privada - acesso interno 
        - Banco de Dados

- Tabela de Rotas
    - Configuração do mapeamento das rotas par as subnetes

- Internet Gateway
    - Para permitir que a subnet pública permita o acesso para a instância via internet.

- Nat Gateway
    - Para permitir que a subnet privada consiga acessar a internet, instalação e atualização de programas.

## Amazon EC2

> É um serviço computacional escalável e configurável pelo usuário que oferece suporte a vários métodos para criptografar dados em repouso. Por exemplo, os clientes podem optar por realizar a criptografia em nível de aplicativo ou campo da PHI à medida que ela é processada em uma plataforma de aplicativo ou banco de dados hospedada em uma instância do Amazon EC2. As abordagens vão desde a criptografia de dados usando bibliotecas padrão em uma estrutura de aplicativo, como Java ou .NET; a utilização de recursos de criptografia transparente de dados no Microsoft SQL ou Oracle; ou a integração de outras soluções de terceiros e baseadas em software como serviço (SaaS) em seus aplicativos.

## Hands-on

> Próximo passo... 

[Criar VPC](../modulo3/vpc/criar-vpc.md)

[Criar EC2](./ec2/Hands-on-ec2.md)

Projetos:

[WORKON](./projetos/workon/README.md) - Página WEB

[BLOG](./projetos/blog/README.md) - Criação de um Blog

