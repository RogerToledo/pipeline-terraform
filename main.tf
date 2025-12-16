terraform {
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.92.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "rogertoledo-remote-state"
    key    = "vm-pipeline-github/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "Owner"     = "Roger Toledo"
      "ManagedBy" = "Terraform"
    }
  }
}

data "aws_vpc" "dio_vpc" {
  id = "vpc-04d33e0786889b10f"
}

data "aws_subnet" "dio_subnet" {
  id = "subnet-0ef86ccebbaef008e"
}

data "aws_security_group" "dio_sg" {
  id = "sg-04f69c14b541399fb"
}