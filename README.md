# OST_Dev
Project Overview

This project contains an application located in the following GitHub repository: https://github.com/Luzifer/ots. As a DevOps Engineer, your task is to pull this repository, scan its contents with SonarQube, build a Docker image, and push it to a registry. The registry should be created using Terraform, and the best registry for this task is Artifact Registry by GCP. Before pushing the image, it should be scanned in Google Artifacts to verify that it does not have any vulnerabilities. Once the image has been pushed, you will write a GitHub Actions pipeline to automate this process and make it dynamic for future use. The GitHub Actions workflow should take all customizable parameters from the user as an environment variable or a file.
