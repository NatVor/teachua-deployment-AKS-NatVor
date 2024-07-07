This repo contains Terraform code to create AKS and Specification file to deploy the TeachUA application AKS.

For local application testing using Docker Compose, you need to clone the backend and frontend repositories:
  1. Clone the backend repository:
     git clone https://github.com/DevOps-ProjectLevel/teachua-backend-NatVor.git
  2. Clone the frontend repository:
     git clone https://github.com/DevOps-ProjectLevel/teachua-frontend-NatVor.git
  3. Apply the Docker Compose configuration to orchestrate the deploymen: docker-compose up

This will initiate the deployment of both the backend and frontend components locally, based on the configurations defined in the docker-compose.yml file. 

For production deployment, you'll need to follow next steps:  ....

az aks get-credentials --resource-group aks-rg --name aks-cluster
kubectl config current-context


az role assignment create --assignee 62c87dff-9a4f-4d13-9ca3-da229ed0fc81 --role "Contributor" --resource-group TeachUA

az role assignment create --assignee 62c87dff-9a4f-4d13-9ca3-da229ed0fc81 --role "Contributor" --scope "/subscriptions/9fb34395-6bc3-450e-9446-bdc1870dc865"

az role assignment create --assignee 6a64b78f-6157-431b-8ef8-b3641cbaf469 --role "Reader" --resource-group TeachUA --scope "/subscriptions/9fb34395-6bc3-450e-9446-bdc1870dc865/resourceGroups/TeachUA"


