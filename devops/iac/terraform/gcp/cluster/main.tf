resource "google_container_cluster" "primary" {
  name                      = "gke-cluster-master"
  location                  = var.gcp_region
  remove_default_node_pool  = true
  initial_node_count        = 1
  default_max_pods_per_node = 3
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  location   = var.gcp_region
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

# resource "google_sql_database_instance" "instance" {
#   name             = "master-database"
#   region           = var.gcp_region
#   database_version = "MYSQL_8_0"
#   settings {
#     tier = "db-f1-micro"
#   }

#   deletion_protection = "true"
# }

# resource "google_sql_database" "database" {
#   name     = "database-master"
#   instance = google_sql_database_instance.instance.name
# }