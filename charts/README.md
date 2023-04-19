###Step 1: Create a Helm Chart for Your Application
Create a Helm chart for the application you want to deploy. Follow these steps:

1) Create a new directory for your Helm chart:

# mkdir chart
# cd chart

2) Create a new Helm chart with the following command:
helm create ots-chart

3) Open the values.yaml file in the ots-chart directory and configure it according to your application's requirements.

Step 2: Create a Terraform Module to Deploy the Helm Chart
Now, we'll create a Terraform module to deploy the Helm chart to the GKE cluster. Follow these steps:

1) Create a new directory for your Terraform module:

# mkdir deployment
# cd deployment

2) Create a new file named main.tf and add the following contents:

module "application" {
  source               = "../modules/terraform-helm-local"
  deployment_name      = "ots"
  deployment_namespace = "ots-ns"
  deployment_path      = "../charts/ots-chart"
  values_yaml          = <<EOF
      EOF 
      
     3)  Update the following placeholders in the main.tf file:
REPOSITORY_URL: The URL of the Helm chart repository.
NAMESPACE: The Kubernetes namespace in which the application will be deployed.
CHART_VERSION: The version of the Helm chart.

5) Create a new directory for your Helm chart:

    mkdir modules
    cd modules 
    
 6) Create module for domain
                  for GKE
                  for monitoring
                  for terraform-helm
                  for terraform-helm-local
                  for terraform-k8s-local
                  
    In our case  modeles  were  alredady created, so we just  copied them using   cp ~/project_infrastructure/2.tools-setup/.gitignore  .      
    
    
  7) Run the following command to initialize the Terraform module:


#terraform init

Run the following command to apply the Terraform module and deploy the application:

#terraform apply

Step 4: Verify the Deployment
Finally, we'll verify that the application was deployed successfully. Follow these steps:

Open the terminal and connect to your GKE cluster using the following command:

kubectl get pods -n NAMESPACE

kubectl get deployment -n NAMESPASE




Regenerate response
  
