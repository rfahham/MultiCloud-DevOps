variable "gcp_project_id" {
  type        = string
  default     = "pegar o ID no console do GCP"
  description = "ID do Projeto"
}

variable "gcp_region" {
  type        = string
  default     = "southamerica-east1-a"
  description = "Região onde será o cluster"
}

