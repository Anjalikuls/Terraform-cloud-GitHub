terraform {
    required_version = "~> 1.7.4" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0f403e3180720dd7e" 
	instance_type = "t2.small"
}
