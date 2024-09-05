# Criando um CLuster na GCP com Terraform

https://www.youtube.com/watch?v=3K1rswpWVQk

Criar um Cloud Storage para salvar o tfstate

Criar em IAM, chave de acesso

Service Account

Adicionar uma key como json (terraform.json)

Colar a chave dentro do projeto

Criar a Variável para o acesso ao Cloud Storage

export GOOGLE_APPLICATION_CREDENTIALS=(path)/terraform.json

terraform init

terraform plan

terraform apply -auto-approve

