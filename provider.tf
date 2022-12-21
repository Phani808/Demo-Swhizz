terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
  shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
  profile = "default"
}
