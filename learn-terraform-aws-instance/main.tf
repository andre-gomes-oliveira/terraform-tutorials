terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08ae71fd7f1449df1"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0dce25c3e2aac0d8e"]
  subnet_id = "subnet-0cda0eeec39a947cc"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
