Helm chart for the ots application,it is setup for the latest version of the application at port 3000, this hart  is deployed with terraform in the deployment section.

# Modify the image  and the host in the values file, check the service and ports to match ypur app configurations.


# To manually deploy the service
    helm install "release_name" charts/ots-chart
