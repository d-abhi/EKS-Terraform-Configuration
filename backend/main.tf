provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example1" {
  bucket = "demo-terraform-eks-state-bucket-4224"       # Bucket name
  
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "example2" {
  name           = "demo-terraform-eks-state-lock-4224"  # DynamoDB table name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

