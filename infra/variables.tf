variable "gcp_project_id" {
  description = "The ID of the project"
  type        = string
}
variable "gcp_region" {
  description = "The region to deploy resources"
  type        = string
}
variable "gcp_zone" {
  description = "The zone to deploy resources"
  type        = string
}
variable "gcp_cidr_range" {
  description = "The CIDR range for the GKE subnet"
  type        = string
}

variable "gcp_vpc_name" {
  description = "The name of the VPC"
  type        = string
}

# variable "gcp_cluster_name" {
#   description = "The name of the GKE cluster"
#   type        = string
# }
