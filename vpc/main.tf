provider "aws" {
  region = var.region
  access_key = var.AWS_SECRET_ACCESS_KEY
  secret_key = var.AWS_ACCESS_KEY_ID
#  profile = "lab"
}

variable "AWS_ACCESS_KEY_ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}



terraform {
  cloud {
    organization = "CompassUOL"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["terraform_autoscaling"]
    }
  }
}





#terraform {
#backend "s3" {
#      profile   = "lab"
#      bucket    = "meu-curso-aws-terraform-remote-state-dev"
#      key       = "vpc/vpc.tfstate"
#      region    = "us-east-1"
#  }
#}

