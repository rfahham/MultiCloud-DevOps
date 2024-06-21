# IAM - AWS Identity and Access Management

Gerencie com segurança as identidades e o acesso a serviços e recursos da AWS

![IAM](./images/iam.png)

## Por que usar o IAM?

Use o IAM para gerenciar e escalar a workload e o acesso da força de trabalho com segurança, apoiando sua agilidade e inovação na AWS.

## Benefícios do IAM

- Defina barreiras de proteção de permissão e acesso refinado

- Gerencie o workload e as identidades da força de trabalho em suas contas da AWS

- Use credenciais de segurança e conjuntos de permissões temporários para acessar seus recursos da AWS

- Analise o acesso e valide as políticas do IAM à medida que você avança em direção ao privilégio mínimo

## Como funciona

Com o AWS Identity and Access Management (IAM), você pode especificar quem ou o que pode acessar serviços e recursos na AWS, gerenciar permissões refinadas de maneira centralizada e analisar o acesso para refinar as permissões na AWS.

## Casos de uso

- Aplique permissões refinadas e escale com controle de acesso baseado em atributos

- Gerencie o acesso por conta ou escale o acesso em contas e aplicações da AWS

- Estabeleça barreiras de proteção preventivas e em toda a organização na AWS

- Defina, verifique e dimensione corretamente as permissões para alcançar o privilégio mínimo

## Considerações (Melhores Práticas)

- Cada usuário deve possuir permissões para executar apenas suas atividades de acordo com suas responsabilidades

- Um usuário após a sua criação, não possui nenhum privilégio, caso não seja dado a ele.

- Definição de permissôes de usuários através de grupos e policies.

- Trabalhar sme dependência da infra provida On-Promises

- Seguir o princíprio do menor  privilégio

- Não utilizar usauário para logar em aplicações

- Conta ROOT deve possuir MFA

- Não utilizar conta ROOT, somente para configuração inicial

- Não compartilhar credenciais

- Um User IAM por pessoa

