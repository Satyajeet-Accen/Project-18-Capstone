terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_ssm_parameter" "satyajeet_gitops_param" {
  name  = "/satyajeet/gitops/deployed"
  type  = "String"
  value = "Infrastructure updated successfully"
}
