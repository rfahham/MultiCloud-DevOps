terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("terraform.json")
  project     = var.gcp_project_id
  region      = var.gcp_region
  zone        = var.gcp_zone
}

# IP Static
# resource "google_compute_address" "static" {
#   name = "my-static-ip"
# }

resource "google_compute_instance" "instance" {
  name         = var.gcp_instance_name
  machine_type = var.gcp_machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "ubuntu-2204-jammy-v20240112"
      size  = 60
    }
  }

  network_interface {
    network = "default"

    access_config {
      # nat_ip = google_compute_address.static.address
    }
  }

  metadata_startup_script = "echo hi terraform! > /test.txt"
}

