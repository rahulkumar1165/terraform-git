terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myserver" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"

  tags = {
  Name = "Rahul-Besent" }
}
