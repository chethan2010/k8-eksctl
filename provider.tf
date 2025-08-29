terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
     bucket="dev-daw9"
     key= "k8s-dev/terraform.tfstate"
    region="us-east-1"
    dynamodb_table="daws83s"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}