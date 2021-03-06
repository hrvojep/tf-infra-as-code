terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "ap-southeast-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-076a5bf4a712000ed"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example-h"
  }
}


