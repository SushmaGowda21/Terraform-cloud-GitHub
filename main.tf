terraform {
    required_version = "~> 1.5.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Sushmainfra" {
	ami = "ami-05e411cf591b5c9f6" 
	instance_type = "t2.nano"
}
