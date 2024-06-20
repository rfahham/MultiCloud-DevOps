Prática

DEV => CodeCommit => CodePipeline => Elastic Beanstalk => Instâncias EC2 => Client



Criar usuário e o repositório

1. Criar credenciais de usuário
2. Conceder permissão para o CodeCommit
3. Criar novo repositório

https://eu-west-1.console.aws.amazon.com/console/home?region=eu-west-1#

Dentro do AWS

Procurar IAM - para criar o usuário

https://console.aws.amazon.com/iam/home?#

Users / Add users / User name* ricardo.fahham

Em Select AWS access type

Selecionar Programmatic access

Clicar em Next permission

Procurar por CodeCommit

Next / Create user

Adicionar usuário a um grupo / Criar um grupo

CodeCommit

AWS




Criar repositório no CodeCommit

Em Serviços / Procurar CodeCommit

Com BREW
$ brew install awscli

Com PIP
$ pip install awscli --upgrade --user

Saber a versão do AWS
$ aws --version


Configurar o acesso da máquina para a conta no AWS

$ aws configure
AWS Access Key ID [None]: 
AWS Secret Access Key [None]: 
Default region name [None]: eu-west-1
Default output format [None]:


Clonar o repositório

GIT clone do AWS

$ git clone https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/workon



Elasticbeanstalk

Nome do aplicativo: app-workon

Linguagem: PHP

URL: AppWorkon-env.xdpuet5u3f.eu-west-1.elasticbeanstalk.com

CodePipeline

Dar o nome do pipeline

EX.: appworkon

Provedor de Origem

AWS CodeCommit