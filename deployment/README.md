This section is the deployment process of all the tools and the application needed.
Mainly uses terraform modules defined in the modules section

# Change tne variables in variables.tf to your own accounts used for monitoring
    PROJECT_ID and google_domain_name
# In the provider.tf provide path to your kubeconfig to authenticate with kubernetes

# To deploy
    1. Terraform init
    2. Terraform apply