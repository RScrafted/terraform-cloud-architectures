terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.22.1"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.123.0.0/16"

  tags = {
    Name = "Main"
    Environment = "Dev"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.123.1.0/24"

  tags = {
    Name = "Main"
    Environment = "Dev"
  }
}