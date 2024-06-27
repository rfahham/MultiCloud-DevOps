# Documentação

Na GCP

- Criar o projeto, que terá um ID
- Criar o Service Account (iam/service account)
    - nome: terraform
    - role
        - project editor
    - keys
        - add
            - new (json)
    
## Provider

https://registry.terraform.io/

https://registry.terraform.io/browse/providers

https://registry.terraform.io/providers/hashicorp/google/latest/docs


## Build infrastructure

https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/google-cloud-platform-build

## Authenticate to Google Cloud

gcloud auth application-default login

## Initialize the directory

terraform init

## Format and validate the configuration

terraform fmt

## Validate

terraform validate
Success! The configuration is valid.

## Create infrastructure

terraform apply --auto-aprove

## Inspect state

terraform show

## Create infrastructure

terraform destroy --auto-aprove