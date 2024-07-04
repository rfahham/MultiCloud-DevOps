# Criando um Bucket na AWS

No console da AWS, procurar por `S3`

<div align="center">

![Criar Bucket](./images/criar-bucket.png)

</div>

Clicar em `Criar Bucket`

<div align="center">

![Config Bucket](./images/config-bucket.png)

</div>

❗ Obs.: O Bucket precisa ser único, por isso precisa de um nome que não exista a possibilidade de ter outro com o mesmo nome.

Ao criar um Bucket com o nome de Terraform, por exemplo, surgirá a mensagem de que já existe um Bucket com este nome.

<div align="center">

![Erro ao criar o Bucket](./images/erro-criar.png)

</div>

O que pode ser feito é adicionar mais informações sobre o Bucket através do nome.

Exemplo: terraform-master-01

<div align="center">

![Bucket criado](./images/bucket-criado.png)

</div>

Próximo passo... [Upload do Objeto](upload.md)