module "gke_vpc" {
  source = "./modules/network"

  network_name   = var.gcp_vpc_name
  gcp_region     = var.gcp_region
  gcp_cidr_range = var.gcp_cidr_range
  gcp_zone       = var.gcp_zone
}

module "gke_cluster" {
  source = "./modules/gke"
  count  = 0

  gcp_cluster_name = var.gcp_cluster_name
  gcp_region       = var.gcp_region
  gcp_zone         = var.gcp_zone
  gcp_vpc_id       = module.gke_vpc.vpc_id
  gcp_subnet_id    = module.gke_vpc.subnet_id

}

module "gke_dns" {
  source = "./modules/dns"

  gcp_dns_zone_name     = var.gcp_dns_zone_name
  gcp_dns_zone_dns_name = var.gcp_dns_zone_dns_name
  gcp_env               = var.gcp_env
}
