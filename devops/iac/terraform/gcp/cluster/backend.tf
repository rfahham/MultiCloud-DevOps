terraform {
  backend "gcs" {
    bucket = "nome do bucket na GCP"
    prefix = "terraform/state"
  }
}