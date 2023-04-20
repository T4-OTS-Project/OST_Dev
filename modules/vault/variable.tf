variable "google_domain_name" {
  type        = string
  default     = "eastpost.org"
  description = "Please use your domain"
}

variable "project_id" {
  type = string
  #default     = "terraform-project-eastpost"
  description = "Please provide your project ID"
}

variable "sa_key" {
  type        = string
  description = "Please provide your gcp service account key"
}