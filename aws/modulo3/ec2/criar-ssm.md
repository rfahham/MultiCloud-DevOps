# Criando instâncias EC2

## Via console SSM

Dentro do console da AWS, procurar por EC2, na aba lateral procurar por Instâncias.

<div align="center">

![Console](../images/instancias.png)

</div>

Clicar em Executar Instâncias

<div align="center">

![Criar EC2](../images/criar-ec2.png)

</div>

> Preencher

Nome da Instância: 

Escolher a imagem da Instância:

Escolher o Tipo da Instância:

Par de chaves (Prosseguir sem um par de chaves)

Selecionar um grupo de segurança existente: Default

Depois clicar em Executar Instância

<div align="center">

![Criar EC2](../images/exito.png)

</div>

## Depois de criar a Instância, criar Role de acesso para a Instância

<div align="center">

![IAM](../images/iam2.png)

![Criando Role](../images/criando-role.png)

</div>

Escolher AWS Service ou Serviço da AWS

> Permitir que serviços da AWS, como o EC2, Lambda ou outros executem ações nessa conta.

Caso de Uso, escolher EC2 <NEXT>

<div align="center">

![Selecionar Entidade Confiável](../images/entidade.png)

</div>

Procurar pelo Nome da Política: AmazonSSMManagedInstanceCore

<div align="center">

![SSM](../images/ssm.png)

</div>

Role Acesso SSM

<div align="center">

![SSM](../images/role.png)

</div>

## Modificar a Role da Instância Criada

Clicar com o botão direito do mouse sobre a Instância criada

<div align="center">

![Modificar Role](../images/modificar-role-iam.png)

![Role Modificada ](../images/role-modificada.png)

</div>

## Para acessar

Usar o CloudShell

```bash
aws ssm start-session --target ID da instância
```


