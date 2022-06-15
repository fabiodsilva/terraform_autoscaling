provider "aws" {
  region = var.region
  access_key = AWS_SECRET_ACCESS_KEY
  secret_key = AWS_ACCESS_KEY_ID
#  profile = "lab"
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
  default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  default = ""
}




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

