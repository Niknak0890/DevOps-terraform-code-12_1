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
/*
resource "aws_iam_group" "gp1" {
  name = "Manager"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_iam_user" "usr1" {
  name = "naver24"
  depends_on = [ aws_iam_group.gp1 ]
}
*/

resource "aws_instance" "demo1" {
  ami = "ami-033a1ebf088e56e81"
  instance_type = "t2.micro"
  key_name = "utrains-key"
  lifecycle {
    create_before_destroy = true
  }
}
