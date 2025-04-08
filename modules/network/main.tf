resource "google_compute_network" "gke_vpc" {
  name                    = "${var.network_name}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "gke_subnet" {
  name          = "${var.network_name}-subnet"
  ip_cidr_range = var.gcp_cidr_range
  region        = var.gcp_region
  network       = google_compute_network.gke_vpc.id
}
