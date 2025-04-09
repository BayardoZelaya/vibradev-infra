variable "network_name" {
  description = "The name of the network"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region to create the network in"
  type        = string
}

variable "gcp_zone" {
  description = "The GCP zone to create the network in"
  type        = string
}

variable "gcp_cidr_range" {
  description = "The CIDR range for the subnetwork"
  type        = string
  default     = "10.0.0.0/24"
}

variable "gcp_source_ranges" {
  description = "The source ranges for the firewall rule"
  type        = list(string)
}
variable "gcp_network_target_tags" {
  description = "The target tags for the firewall rule"
  type        = list(string)
}
