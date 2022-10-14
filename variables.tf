variable "profile" {
    default                  = "default"
    description              = "AWS Profile"
}        
variable "region" {       
    default                  = "us-east-2"
    description              = "AWS Region"
}        
variable "vpc_name" {         
    default                  = "dynatron-vpc"
    description              = "VPC Name"
}
variable "env" {
    default                  = "dynatron_prod"
}
variable "cidr_block" {
    default                  = "172.16.0.0/23"
    description              = "Network CIDR of VPC"
}
variable "private_subnets" {
    default                  = ["172.16.0.0/25", "172.16.0.128/25"]
}
variable "public_subnets" {
    default                  = ["172.16.1.0/25","172.16.1.128/25" ]
  
}
variable "cluster_name" {
    default                  = "dynatron-cluster"
}
variable "challenge" {
    default                  = "dynatron"
}