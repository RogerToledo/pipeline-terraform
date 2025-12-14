terraform {
  required_version = ">=1.14.2"
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
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      "Owner"     = "Roger Toledo"
      "ManagedBy" = "Terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "rogertoledo-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}