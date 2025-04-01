resource "google_compute_network" "gke_vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "gke_subnet" {
  name          = "gke-subnet"
  ip_cidr_range = var.gcp_cidr_range
  region        = var.gcp_region
  network       = google_compute_network.gke_network.id
}
