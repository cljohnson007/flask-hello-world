# Dynatron Challenge 
        by Charnell Johnson
        charnell.johnson3@gmail.com
        757-214-7943

## Repository Structure

This repository orgainized in the following Directory Structure:

## `1_infrastructure`

## `2_app`

## `3_kubernetes`
#
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
- Compiles the app and Builds a Docker image
####
####
### Issue the following COMMANDS inside the 2_app Directory:
#### `# docker build -t dynatron .`
#### `# docker tag dynatron:latest aws_account_id.dkr.ecr.us-east-2.amazonaws.com/dynatron:latest`
#### `# docker push aws_account_id.dkr.ecr.region.amazonaws.com/dynatron:latest`
#
##
## `3_kubernetes`
- Deploys 1 kubenetes Deployments 
  - dynatron-deployment
- Each Deployment has a corespnding ClusterIP Service tat will connect to a shared Ingress Service
####
####
### Issue the following commands inside the helm Directory:
#### `# kubectl apply -f hello.yaml `
#
##

##
## `DELETE AWS INFRA`
- IMPORTANT
- Delete EKS CLUSTER and AWS REOURCES LAST!!!
  - `# terraform destroy`             


#
This is a simple deployment of 2 bare nginx containers running in AWS EKS.
####
The containers are exposed by a single Classic LoadBalancer that could be given a domain name of altana.ai (fictitious)
####
The LoadBalancer could then route traffic to the altana cluster through the Ingress Controller and Ingress Service Rules.
####
I have configured the Ingress Rules to serve the following if the LoadBalance resolved to the altana.ai domain name:
####
`altana.ai/search` would serve - search-api service
####
`altana.ai/graph` would serve - graph-api service
###
#### `# kubectl get ingress`  to get the LoadBalancer Address.
####
Then you could place the following in your browser to see the NGINX Welcome Page from each Service:
#### `$LoadBalancerURL/search`
#### `$LoadBalancerURL/graph`


There are serveral ways to configure this, However I chose this configuration for simplicity and practicality. 
####
In order to resolve `search.altana.ai` and `graph.altana.ai`, Name Base Virtual hosting/Shared IP hosting requires both services to resolve the same IP Address individually.
####
I did think this to be practical for this excercise to show that each NGINX container has successfully deployed.

####

The submitted will demonstrate to pertinent parties, my abilities, skills and comprension
of technologies used in this exercise. This was CERTAINLY FUN! I look forward to discussing other methods not demonstrated here soon! To include Git-Action workflows for Automation!
####
Thank You!