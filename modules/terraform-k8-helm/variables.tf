variable "deployment_name" {
  type        = string
  description = "- (Required) Chart release name."
}

variable "deployment_namespace" {
  type        = string
  default     = "default"
  description = "- (Optional) Namespace where to deploy resources to."
}

variable "deployment_repo" {
  type        = string
  description = "- (Required) Path for the Chart."
}

variable "deployment_chart_name"{
    type        = string
    description = "- (Required) Name of the Chart"
}

variable "chart_version" {
    type = string
    description = "Deployment version"
    default = ""
}

variable "values_yaml" {
  type        = string
  description = "- (Required) Values.yaml file."
}
