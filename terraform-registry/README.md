# This Terraform code is used to create a Docker repository in Google Cloud Artifact Registry and configure the backend for Terraform state storage.

## Prerequisites
### A Google Cloud Platform (GCP) account
### Google Cloud Storage (GCS) bucket to store Terraform state
###  service account with the necessary permissions to create a Docker repository and configure the backend for Terraform state storage

# Usage

1) Set the values for the project and bucket variables in the terraform block based on your GCP project and GCS bucket names.
2) Create a new secret in the GitHub repository where this Terraform code will be stored with the name SERVICE_ACCOUNT_KEY and the value of the JSON key for the service account with the necessary permissions.

Use the following command to initialize the Terraform backend:

### terraform init

Use the following command to preview the changes that will be applied:

### terraform plan

Use the following command to apply the changes:

### terraform apply

After the Terraform code is executed, a Docker repository will be created in Google Cloud Artifact Registry with the ID ots-project-repo.
Note: To use this Docker repository, you will need to authenticate with GCP using the gcloud CLI or by using the appropriate credentials in your CI/CD pipeline.
