# Dynatron Challenge 
        by Charnell Johnson
        charnell.johnson3@gmail.com
        757-214-7943

## Repository Structure

This repository orgainized in the following Directory Structure:

## `1_infrastructure`

## `2_app`

## `3_kubernetes`
##
## `1_infrastructure`
- Creates an AWS VPC with a CIDR 172.16.0.0/23
- 2 Private Subnets 172.16.0.0/25 and 172.16.0.128/25
- 2 Public Subnets 172.16.1.0/25 and 172.16.1.128/25
- Creates an EKS Cluster named "dynatron-cluster"
####
####
### Issue the following COMMANDS inside the 1_infrastructure Directory:
#### `# terraform init`
####
#### `# terraform plan`
####
#### `# terraform apply`
#
##
## `2_app`
- Compiles the app and Builds a Docker Image
####
####
### Issue the following COMMANDS inside the 2_app Directory:
#### `# docker build -t dynatron .`
#### `# aws ecr get-login-password --region us-east-2 --profile $YOUR_AWS_PROFILE | docker login --username AWS --password-stdin $YOUR_ACCOUNT_ID.dkr.ecr.us-east-2.amazonaws.com`
#### `# docker tag dynatron:latest $YOUR_ACCOUNT_ID.dkr.ecr.us-east-2.amazonaws.com/dynatron:latest`
#### `# docker push $YOUR_ACCOUNT_ID.dkr.ecr.us-east-2.amazonaws.com/dynatron:latest`
#
##
## `3_kubernetes`
- Deploys 1 kubenetes Deployments 
  - dynatron-deployment
####
####
### Issue the following commands inside the helm Directory:
#### `# aws eks update-kubeconfig --region us-east-2 --name dynatron-cluster --profile $YOUR_AWS_PROFILE`
#### `# kubectl apply -f hello.yaml `
#### `# kubectl get pods`
#### `# kubectl port-forward $YOUR_KUBERNETES_POD 8080:8080`
#
##

##
## `DELETE AWS INFRA`
- IMPORTANT
- Delete EKS CLUSTER and AWS REOURCES LAST!!!
  - `# terraform destroy`             


#
This is a simple deployment.
####
###
####
The submitted will demonstrate to pertinent parties, my abilities, skills and comprehenion
of technologies used in this exercise. This was CERTAINLY FUN! I look forward to discussing other methods not demonstrated here soon! To include Git-Action workflows for Automation!
####
Thank You!