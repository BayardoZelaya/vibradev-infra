resource "google_dns_managed_zone" "primary" {
  name        = var.gcp_dns_zone_name
  dns_name    = var.gcp_dns_zone_dns_name
  description = "Managed by Terraform"
}

resource "google_dns_record_set" "test_record" {
  name         = "${var.gcp_env}.${var.gcp_dns_zone_dns_name}"
  managed_zone = google_dns_managed_zone.primary.name
  type         = "A"
  ttl          = 300
  rrdatas      = ["8.8.8.8"]
}

resource "google_dns_record_set" "vibradev-py" {
  name         = "py-dev.${var.gcp_dns_zone_dns_name}"
  managed_zone = google_dns_managed_zone.primary.name
  type         = "A"
  ttl          = 300
  rrdatas      = ["34.120.119.252"]
}

resource "google_dns_record_set" "go-app" {
  name         = "go-app.${var.gcp_dns_zone_dns_name}"
  managed_zone = google_dns_managed_zone.primary.name
  type         = "A"
  ttl          = 300
  rrdatas      = ["34.110.214.252"]

}
