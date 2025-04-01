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
variable "gcp_credentials_file" {
  description = "The path to the GCP credentials file"
  type        = string
}
variable "gcp_cidr_range" {
  description = "The CIDR range for the GKE subnet"
  type        = string
}