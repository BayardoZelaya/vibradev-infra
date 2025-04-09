variable "gcp_region" {
  description = "The GCP region to create the network in"
  type        = string
}

variable "gcp_zone" {
  description = "The GCP zone to create the network in"
  type        = string
}

variable "gcp_vpc_id" {
  description = "The ID of the network"
  type        = string
}

variable "gcp_subnet_id" {
  description = "The ID of the subnetwork"
  type        = string
}

variable "gcp_cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "gcp_network_target_tags" {
  description = "The target tags for the firewall rule"
  type        = list(string)
}