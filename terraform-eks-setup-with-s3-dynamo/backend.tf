terraform {
  backend "s3" {
    bucket         = "my-eks-terraform-state-bucket9082"
    key            = "eks/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}