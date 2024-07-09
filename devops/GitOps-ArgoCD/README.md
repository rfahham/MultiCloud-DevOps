# Gerenciamento de Infraestrutura com GitOps e ArgoCD

[Getting Started](https://argo-cd.readthedocs.io/en/stable/getting_started/)

https://jjasonhenrique.me/2024/06/09/gerenciamento-de-infraestrutura-com-gitops-e-argocd/

O objetivo desse artigo é criar um tutorial de como instalar o ArgoCD no kubernetes usando kind e também vamos subir uma aplicação (o nosso famoso e querido nginx) usando o ArgoCD.

## Pré Requisitos

Para fazer a instalção do ArgoCD e acompanhar esse artigo será necessário os seguintes pré requisitos abaixo:

- Ter o helm instalado.
- Ter o kubectl instalado.
- Ter uma conta no github.
- Ter um cluster local usando kind. Mais informações nesse link.

## Conceitos

Antes de partir para parte prática será necessários dar alguns passos atrás para entendermos sobre GitOps.

GitOps é um forma poderosa de gerenciar e automatizar a sua infraestrutura de forma declarativa usando um repositório git.

Basicamente o desenvolvedor e/ou engenheiro devops vai ter todas as definições de infraestrutura em um repositório e o ArgoCD irá fazer verificações em um intervalo de tempo e caso haja alguma modificação no repositório será iniciado um novo deploy da sua aplicação no seu cluster kubernetes.

Com gitops existe a possibilidade de fazer o reconcile das suas definições, ou seja, caso alguém faça uma alteração manual por exemplo alterando o número de réplicas o argocd irá verificar suas definições e vai fazer o reverte caso o número de réplicas correto não esteja declarado no seu repositório git.

Próximo passo... [Instalação do ArgoCD](instalacao.md)