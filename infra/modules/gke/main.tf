resource "google_container_cluster" "primary" {
  name                     = "${var.gcp_cluster_name}-cluster"
  location                 = var.gcp_zone
  remove_default_node_pool = true
  network                  = var.gcp_vpc_id
  subnetwork               = var.gcp_subnet_id
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
  name       = "${var.gcp_cluster_name}-np"
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    preemptible  = true
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/devstorage.read_only",
    ]
  }
  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }
}
