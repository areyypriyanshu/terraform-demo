terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0b0ea68c435eb488d" # Amazon Linux 2 (eu-north-1)
  instance_type = "t3.micro"

  tags = {
    Name = "spacelift-demo"
  }
}
