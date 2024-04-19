terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region     = var.location
}

resource "aws_instance" "vm1" {
  ami = "ami-001843b876406202a"
  instance_type = "t2.micro"
  tags = {
    "Name" ="Cloud1"
  }
}