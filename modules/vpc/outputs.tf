output "vpc_id" {
    description = "value of the VPC ID"
  value = aws_vpc.main.id
  
}

output "public_subnet_ids" {
    description = "value of the public subnet IDs"
    value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
    description = "value of the private subnet IDs"
    value = aws_subnet.private[*].id
  
}

