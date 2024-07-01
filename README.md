This repo contains Terraform code to create AKS and Specification file to deploy the TeachUA application AKS.

For local application testing using Docker Compose, you need to clone the backend and frontend repositories:
  1. Clone the backend repository:
     git clone https://github.com/DevOps-ProjectLevel/teachua-backend-NatVor.git
  2. Clone the frontend repository:
     git clone https://github.com/DevOps-ProjectLevel/teachua-frontend-NatVor.git
  3. Apply the Docker Compose configuration to orchestrate the deploymen: docker-compose up

This will initiate the deployment of both the backend and frontend components locally, based on the configurations defined in the docker-compose.yml file. 
