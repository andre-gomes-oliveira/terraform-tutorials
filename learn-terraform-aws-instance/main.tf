terraform {
  cloud {
    organization = var.organization
    workspaces {
      name = var.workspace
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.ami_ubuntu
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0dce25c3e2aac0d8e"]
  subnet_id = "subnet-0cda0eeec39a947cc"
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}
