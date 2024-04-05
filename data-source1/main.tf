terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"

    }

  }

}

provider "aws" {
  region = "us-east-1"
}

  resource "aws_instance" "demo" {
    ami = data.aws_instance.ec2-1.ami
    instance_type = data.aws_instance.ec2-1.instance_type
    key_name = data.aws_instance.ec2-1.key_name 
    }
