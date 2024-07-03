# 6 - Security Group

Regras de Acesso a Infra - Firewall Virtual

> Controla o tráfego de uma ou mais instâncias

> Configuração de regra de segurança podem ser feitas por serviço, porta, origem ou destino e tem a flexibilidade de setem alteraas a qualquer momento.

> Ao criar uma instância, é possível associar um ou mais grupos a ela.

> O padrão das instâncias é de libear o acesso a internet de saída (All Outbound), mas proíbe por padrão todo o tráfego de entrada (No Inbound), para que haja proibição de saída ou permissão de entrada nos tráfego é necessário criar uma regra específica que faça a liberação e ou proibição do tráfego.

## Inbound Rules

Todo o acesso de entrada ao ambiente

## Outbund Rules

Todo acesso de saída do ambiente para a internet

## CRIAR o Security Group

Em IAM

Procurar por Security Group

Nome: master

## Regras de Entrada

Permitem o acesso da internet para a instância

## Regras de Saída

Permitem o acesso da Instância para a internet ou para outra instância ou serviço

> Próximo passo... [Criar as Instâncias](../vpc/instancias.md) .