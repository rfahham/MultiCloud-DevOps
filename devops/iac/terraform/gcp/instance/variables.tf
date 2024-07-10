variable "gcp_project_id" {
  type        = string
  default     = "pegar o ID no console do GCP"
  description = "ID do Projeto"
}

variable "gcp_region" {
  type        = string
  default     = "southamerica-east1"
  description = "Região onde será criada a instância"
}

variable "gcp_zone" {
  type        = string
  default     = "southamerica-east1-a"
  description = "Zona onde será criada a instância"
}

variable "gcp_instance_name" {
  type        = string
  default     = "instance-01"
  description = "Nome da instância"
}

variable "gcp_machine_type" {
  type        = string
  default     = "e2-standard-4"
  description = "Tipo da instância"
}



