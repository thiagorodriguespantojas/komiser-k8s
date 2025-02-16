resource "google_container_cluster" "primary" {
  name     = "komiser-cluster"
  location = "us-central1"

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "komiser-node-pool"
  cluster    = google_container_cluster.primary.id
  location   = "us-central1"

  node_count = 2

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
