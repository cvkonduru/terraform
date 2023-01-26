terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "First_Instance" {
   ami = "ami-0fb653ca2d3203ac1"
   instance_type = "t2.micro" 

   tags = {
    Name = "First_Chay_tf"
   } 
}