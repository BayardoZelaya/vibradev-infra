resource "google_dns_managed_zone" "primary" {
  name        = var.gcp_dns_zone_name
  dns_name    = var.gcp_dns_zone_dns_name
  description = "Managed by Terraform"
}

