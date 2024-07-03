# 2 - Criar as subnets

Clicar em subnets

Crie sub-redes nessa VPC...

Selecionar a VPC

## Criar sub-rede publica (1 de 2)

Nome da vpc pública: master-public

Zona de disponibilidade: `us-east-1a`

Bloco CIDR ipv4 da sub-rede: 10.0.0.0/24

<div align="center">

![Criar sub-rede publica](./images/sub-pub.png)

</div>

## Criar sub-rede privada (2 de 2)

Nome da vpc privada: `master-private`

Zona de disponibilidade: `us-east-1a`

Bloco CIDR ipv4 da sub-rede: `10.0.0.0/24`

<div align="center">

![Criar sub-rede privada](./images/sub-priv.png)

</div>

## Sub-redes criadas

<div align="center">

![Criar sub-rede publica](./images/sub-criadas.png)

</div>

> Próximo passo... [Criar Internet Gateway](./internet-gateway.md) .