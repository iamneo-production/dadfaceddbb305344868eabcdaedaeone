terraform {
    required_providers {
      aws={
          source = "hashicorp/aws"
      }
    }
}

provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAVR4ZLKZMTIKMCV7K"
    secret_key = "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"
}

resource "aws" "ec2_instance" {
    ami = ""
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
}