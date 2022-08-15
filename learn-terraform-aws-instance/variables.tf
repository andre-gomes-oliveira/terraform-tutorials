variable "organization" {
  description = "Name of the organization where the Terraform cloud will be deployed"
  type        = string
  default     = "andre.olivera"
}

variable "organization" {
  description = "Name of the workspace within the organization where the Terraform cloud will be deployed"
  type        = string
  default     = "playground"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "sa-east-1"
}

variable "ami_ubuntu" {
  description = "AMI id for the Ubuntu 20 OS in the sa-east-1 region"
  type        = string
  default     = "ami-08ae71fd7f1449df1"
}

variable "ami_amazon_linux" {
  description = "AMI id for the Amazon Linux OS in the sa-east-1 region"
  type        = string
  default     = "ami-0a9e90bd830396d02"
}


