terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myserver" {
  count  = 2
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  tags = {
    Name = "SampleServer-${count.index}"
  }
}
