terraform {
  required_version = "1.8.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }

  }

  # Remote State

  backend "s3" {
    bucket  = "terraform-master-01"
    key     = "projetos/monitoramento/terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }

}