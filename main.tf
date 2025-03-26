terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


backend "s3" {
  bucket = "demo-terraform-eks-state-bucket-4224"
  key    = "terraform.tfstate"
  region = "us-east-1"
  dynamodb_table = "demo-terraform-eks-state-lock-4224"
  encrypt = true
}

}

provider "aws" {
  region = "us-east-1"
  
}
 

module "vpc" {
  source = "./modules/vpc"

    vpc_cidr_block = var.vpc_cidr_block
    availability_zones = var.availability_zones
    public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
    private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
    cluster_name = var.cluster_name 
}

module "eks" {
  source = "./modules/eks"

    cluster_name  = var.cluster_name
    cluster_version  = var.cluster_version
    vpc_id  = module.vpc.vpc_id
    subnet_ids = module.vpc.private_subnet_ids
    node_groups = var.node_groups
}
