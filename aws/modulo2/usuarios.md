# Tipos de Usuários

## Usuários Raiz

> Ao criar uma conta da Amazon Web Services (AWS) pela primeira vez, você começa com uma única identidade de login que tem acesso total a todos os produtos e recursos da AWS na conta. Essa identidade é denominada usuário raiz da conta da AWS e é acessada pelo login com o endereço de e-mail e a senha usados para criar a conta.

### Importante 

> É altamente recomendável não usar o usuário raiz para tarefas diárias e seguir as melhores práticas do usuário raiz para suas Conta da AWS. Proteja as credenciais do usuário-raiz e use-as para executar as tarefas que somente ele pode executar. Para obter a lista completa das tarefas que exigem fazer login como usuário raiz, consulte Tarefas que exigem credenciais de usuário raiz.

### Autenticação Multifator (MFA)

> A autenticação multifator (MFA) fornece uma maneira simples e segura de adicionar uma camada extra de proteção ao mecanismo de autenticação padrão de nome de usuário e senha.

> Quando os administradores habilitam a MFA, os usuários devem fazer login no portal de acesso da AWS com dois fatores:

> Seu nome de usuário e senha. Este é o primeiro fator e é algo que os usuários sabem.

> Um código, chave de segurança ou biometria. Este é o segundo fator e é algo que os usuários possuem (posse) ou são (biométricos). O segundo fator pode ser um código de autenticação gerado a partir do dispositivo móvel, uma chave de segurança conectada ao computador ou a verificação biométrica do usuário.

> Juntos, esses vários fatores fornecem maior segurança, impedindo o acesso não autorizado aos seus recursos da AWS, a menos que um desafio de MFA válido tenha sido concluído com êxito.

> Cada usuário pode registrar até dois aplicativos autenticadores virtuais, que são aplicativos autenticadores de senha de uso único instalados em seu dispositivo móvel ou tablet, e seis autenticadores FIDO, que incluem autenticadores integrados e chaves de segurança, para um total de oito dispositivos MFA. 

[Saiba mais sobre os tipos de MFA disponíveis para o IAM Identity Center.](https://docs.aws.amazon.com/singlesignon/latest/userguide/mfa-types.html)

## Usuários IAM 

> O **AWS Identity and Access Management** é um serviço de infraestrutura central que fornece a base para o controle de acesso com base nas identidades da AWS. Você usa o IAM toda vez que acessa sua conta da AWS.

> O uso do IAM varia dependendo do trabalho que for realizado na AWS.

> **Usuário do serviço:** se você usar o serviço da AWS para fazer o trabalho, o administrador fornecerá as credenciais e as permissões necessárias. À medida que usar recursos mais avançados para fazer seu trabalho, você poderá precisar de permissões adicionais. Entender como o acesso é gerenciado pode ajudá-lo a solicitar as permissões corretas ao seu administrador.

> **Administrador do serviço:** se você for o responsável por um recurso da AWS em sua empresa, provavelmente terá acesso total ao IAM. Cabe a você determinar quais funcionalidades e recursos do IAM os usuários do serviço devem acessar. Assim, você deve enviar solicitações ao administrador do IAM para alterar as permissões dos usuários de seu serviço. Revise as informações nesta página para entender os Introdução ao IAM.

> **Administrador do IAM:** se for um administrador do IAM, você gerenciará identidades do IAM e escreverá políticas para gerenciar o acesso ao IAM.

## Federation

> Se os usuários em sua organização já tiverem uma forma de autenticação, por exemplo, ao fazer login na sua rede corporativa, você não precisará criar usuários do IAM separados ou usuários do Centro de Identidade do IAM para eles. Em vez disso, você pode criar a federação dessas identidades de usuários na AWS usando o IAM ou o AWS IAM Identity Center.

O diagrama a seguir mostra como um usuário pode obter credenciais de segurança temporárias da AWS para acessar recursos em sua Conta da AWS.

<div align="center">

![federaçao](./images/federacao.png)

</div>

A federação é especialmente útil nos seguintes casos:

1 - Seus usuários já existem em um diretório corporativo.

> Se o seu diretório corporativo for compatível com Security Assertion Markup Language 2.0 (SAML 2.0), você poderá configurar o diretório corporativo para fornecer acesso de logon único (SSO) ao AWS Management Console para seus usuários. Para ter mais informações, consulte Cenários comuns para credenciais temporárias.

> Se o seu diretório corporativo não for compatível com SAML 2.0, você poderá criar um aplicativo identity broker para fornecer acesso de logon único (SSO) ao AWS Management Console para seus usuários. Para ter mais informações, consulte Habilitar o acesso do agente de identidades personalizado ao console da AWS.

> Se o seu diretório corporativo for o Microsoft Active Directory, você poderá usar o AWS IAM Identity Center para se conectar a um diretório autogerenciado no Active Directory ou um diretório no AWS Directory Service para estabelecer confiança entre o diretório corporativo e sua Conta da AWS.

> Caso esteja usando um provedor de identidades (IdP) externo, como o Okta ou o Microsoft Entra, para gerenciar usuários, você poderá usar o AWS IAM Identity Center para estabelecer confiança entre seu IdP e sua Conta da AWS. Para obter mais informações, consulte Conectar-se a um provedor de identidades externo no Guia do usuário do AWS IAM Identity Center.

2 - Seus usuários já têm identidades da Internet.

> Se você estiver criando um aplicativo móvel ou um aplicativo baseado na web que permita aos usuários se identificar por meio de um provedor de identidade da Internet, como Login with Amazon, Facebook, Google ou qualquer provedor de identidade compatível com OpenID Connect (OIDC), o aplicativo poderá usar a federação para acessar a AWS. Para ter mais informações, consulte Federação OIDC.