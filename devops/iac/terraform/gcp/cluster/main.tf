terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

resource "google_container_cluster" "primary" {
  name               = "gke-cluster-master"
  location           = var.gcp_region
  initial_node_count = 1
  enable_autopilot   = true
  ip_allocation_policy {

  }
}

resource "google_sql_database_instance" "instance" {
  name             = "master-database"
  region           = var.gcp_region
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = "true"
}

resource "google_sql_database" "database" {
  name     = "database-master"
  instance = google_sql_database_instance.instance.name
}