resource "google_container_cluster" "primary" {
  name                     = "dev-gke-cluster"
  location                 = var.gcp_region
  remove_default_node_pool = true
  network                  = google_compute_network.gke_network.id
  subnetwork               = google_compute_subnetwork.gke_subnet.id
  initial_node_count       = 1
  deletion_protection      = false

  ip_allocation_policy {
  }
  network_policy {
    enabled  = true
    provider = "CALICO"
  }
}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  location   = google_container_cluster.primary.location
  name       = "primary-node-pool"
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    preemptible  = true
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }
}
