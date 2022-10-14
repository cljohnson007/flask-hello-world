module "eks" {
  source                = "terraform-aws-modules/eks/aws"
  cluster_name          = var.cluster_name
  subnet_ids            = module.vpc.private_subnets
  vpc_id                = module.vpc.vpc_id

  #Worker Nodes
  eks_managed_node_groups = {
    # Default node group - as provided by AWS EKS
    default_node_group = {
      create_launch_template = false
      disk_size = 50
      launch_template_name = ""
  tags = { challenge = var.challenge}
    }
  }
}