variable "gcp_project_id" {
  type        = string
  default     = "pegar o ID no console do GCP"
  description = "ID do Projeto"
}

variable "gcp_region" {
  type        = string
  default     = "us-eats-1"
  description = "Região onde será criada a instância"
}

