variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "A list of availability zones"
  type        = list(string)
  
}

variable "public_subnet_cidr_blocks" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "A list of private subnet CIDR blocks"
  type        = list(string)
  
}

variable "cluster_name" {
    description = "The name of the EKS cluster"
    type        = string        
  
}

