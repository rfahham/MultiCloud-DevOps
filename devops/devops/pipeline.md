Anatomia de um Pipeline de Implementação

O Manifesto Ágil diz:

	Nossa maior prioridade é (SATISFAZER O CLIENTE), através da entrega adiantada e contínua de software de valor.

E recomenda:

	(ENTREGAR SOFTWARE FUNCIONANDO COM FREQUENCIA), na escala de semana até meses, com preferência aos períodos mais curtos.


O objetivo do pipeline de implementação é sempre automatizar e agilizar o processo de entrega de valor. 


Pipeline de Implementação

É a sequencia de atividade automatizadas para levar o código da máquina do desenvolvedor para o ambiente de produção.

Essa expressão é uma abstração que envolve os processos de:

- Integração Contínua (Continuous Integration)
- Entrega Contínua (Continuous Delivery)
- Implantação Contínua (Continuous Deployment)


O objetivo do Pipeline de Implementação

1. Entregar código em produção de forma rápida, segura e consistente
2. Tornar visível cada parte do processo de entrega do software
3. Automatizar tudo o que for possível


- Integração Contínua (Continuous Integration)

A integração contínua é uma das práticas originais do XP (Extreme Programming), que encoraja desenvolvedores a integrar seu trabalho o mais frequente possível para que problemas sejam detectados e corrigidos rapidamente.

Garantir que o código esteja deployavel.

É a etapa de validação de qualidade do código no momento do commit no repositório.

Ferramentas:

Jenkins, TC, GO, Bamboo, circleci, AWS CodePipeline, CloudBees, TravisCi


Pré-requisitos para a integração contínua

1. Controle de versão
2. Um processo automatizado de compilação
3. Aceitação da equipe


- Entrega Contínua (Continuous Delivery)

A entrega contínua é uma extensão da integração contínua para garantir que você possa liberar novas alterações para seus clientes rapidamente e de maneira sustentável. Isso significa que, além de automatizar seus testes, você também automatizou seu processo de liberação e pode implantar sua aplicação a qualquer momento, com o clique de um botão.


- Implantação Contínua (Continuous Deployment)

É como uma Entrega Contínua, exceto pelo fato de que as liberações para produção ocorrem automaticamente. Exige uma boa maturidade de DevOps da organização.


Como criar um pipeline de implantação

1. Modelar o fluxo de valor e criar um esqueleto do processo
2. Automatizar os processos de compilação
3. Automatizar os testes
4. Automatizar os processos de implantação
5. Implementar estratégia de entrega de versão (blue and green)


Benefícios do pipeline de implantação

1. Processo confiável, previsivel e passível de repetição
2. Autonomia para as equipes entregarem seu trabalho
3. Redução de erros 
4. Redução de estresse para lançar nova versão


Automatize seus testes

Gráfico de testes



Implementando uma telemetria eficiente

Telemetria é um processo automatizado de comunicação onde medições e outros dados são coletados de dispositivos remotos e transmitidos para equipamentos de monitoramento.

1. Dev e Ops devem usar as mesmas ferramentas
2. Todos devem ter acesso
3. Deve ajudara de forma preditiva, antes que o cliente seja impactado.


Integre Qualidade e Segurança desde o início

Qualidade e Segurança não andam separado do desenvolvimento e sustentação!

Todos no time responsáveis pela qualidade e segurança, por isso devemos pensar nestes dois itens logo no início do nosso projeto e continuamente durante o desenvolvimento,

