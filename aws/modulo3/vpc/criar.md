# Criando uma VPC

Acessar o Console ada AWS

Selecionar a região: us-east-1

Procurar por VPC

## Clicar em Criar VPC

<div align="center">

![Criar EC2](./images/criar-vpc.png)

</div>

## Criar as sub-redes

Clicar em sub-redes

Criar sub-rede publica e privada

<div align="center">

![Criar sub-rede publica](./images/sub-pub.png)

![Criar sub-rede privada](./images/sub-priv.png)

</div>

## sub-redes Criadas

<div align="center">

![Criar sub-rede publica](./images/sub-criadas.png)

</div>

# CIDR

Classless Inter-Domain Routing ou Domínios Sem Classificação 

> O CIDR permite flexibilidade na criação de super redes, o que não é possível na arquitetura de mascaramento convencional. Por exemplo, sua organização pode combinar endereços IP em um único bloco de rede usando uma notação como esta: 192.168.1/23.

https://aws.amazon.com/pt/what-is/cidr/

## Criar as Instâncias

> instance-public

<div align="center">

![Criar EC2 publica](./images/ec2-plublic.png)

</div>

> instance-private - Não tem endereço públic

<div align="center">

![Criar EC2 privada](./images/ec2-private.png)

</div>

## Internet Gateway

Habilitar para que a instance-public possa ter acesso da internet.

Em VPC, Gateways da Internet

- Criar Gateway de Internet

    - Nome: mastre-gateway-internet

<div align="center">

![Criar Internet Gateway](./images/internet-gateway-criada.png)

</div>

- Associar

    - Associar a vpc criada

<div align="center">

![Associara VPC](./images/associar-vpc.png)

</div>

## Criando Tabela de Rota de saída no Internet Gateway

Em VPC / Tabelas de Rotas

Criar tabela de rotas (public e private)

Nome: master-route-table-public

<div align="center">

![Tabela de Rede Publica](./images/route-table-public.png)

e

![Tabela de Rede Privada](./images/route-table-private.png)

</div>

Procurar por associação de sub-rede

<div align="center">

![Associara Rede Publica](./images/assoc-rede-publica.png)

</div>

# Editar Rotas

<div align="center">

![Editar Rotas](./images/editar-rotas.png)

</div>

## NAT GATEWAY

Acesso só de saída - Out

Utilizado para instalar os programas.

VPC / Gateways Nat

Nome: master-nat-gateway

<div align="center">

![Criando Nat Gateway](./images/nat-gateway.png)

</div>

Criar a Rota de EC2 para o NAT GATEWAY

