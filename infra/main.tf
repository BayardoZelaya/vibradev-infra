module "gke_vpc" {
  source = "./modules/network"

  network_name   = var.gcp_vpc_name
  gcp_region     = var.gcp_region
  gcp_cidr_range = var.gcp_cidr_range
  gcp_zone       = var.gcp_zone
}
