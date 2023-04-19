
 
           # README for GitHub Actions Workflow
# This GitHub Actions Workflow performs the following tasks:

Checks out the repository
Sets up Google Cloud SDK (Cloud SDK is a set of tools, including gcloud, gsutil, and bq command-line tools, client libraries & local emulators for developing with Google Cloud) and Terraform
Initializes Terraform configuration
Applies Terraform changes
Builds a Docker image
Tags and pushes the Docker image to Google Container Registry
Workflow Trigger
This workflow is triggered on a push to the "main" branch, and can also be manually triggered through a workflow_dispatch event.

# Workflow Steps
Checkout
The actions/checkout action is used to check out the repository code.

# Setup Google Cloud SDK and Terraform
The google-github-actions/setup-gcloud action is used to authenticate with Google Cloud and configure the Google Cloud SDK Docker authentication for the current project. The hashicorp/setup-terraform action is used to set up Terraform version 1.1.9.

# Terraform Initialization and Apply
The Terraform configuration is initialized using the terraform init command. The Terraform apply command is only executed when the push event is triggered on the main branch. In this case, the Terraform changes are applied using the terraform apply command with the -auto-approve and -input=false flags.

# Build Docker Image
The docker build command is used to build a Docker image with the name defined in the env.IMAGE_NAME environment variable.

# Configure Docker Client
The gcloud auth configure-docker command is used to configure Docker to authenticate with the Google Container Registry in the us-central1 region.

# Tag and Push Docker Image to Registry
The Docker image is tagged with the us-central1-docker.pkg.dev/${{ env.ID_PROJECT }}/${{ env.PROJECT_REPO }}/${{ env.IMAGE_NAME }} name and pushed to the Google Container Registry. The image is tagged with the latest tag and a unique tag based on the current git commit using the ${{ github.sha }} variable.

# Environment Variables
The following environment variables are used in this workflow:

### env.IMAGE_NAME: The name of the Docker image that will be built and pushed to the Google Container Registry.
### env.ID_PROJECT: The ID of the Google Cloud project in which the Docker image will be pushed.
### env.PROJECT_REPO: The name of the Google Cloud Storage bucket in which the Docker image will be pushed.
### Secrets
The following secrets are required to run this workflow:

### secrets.SERVICE_ACCOUNT_KEY: A JSON key file for a Google Cloud service account that has the necessary permissions to push the Docker image to the Google Container Registry.








