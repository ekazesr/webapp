terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region # change your region as per your requriements
  # access_key=""
  # secret_key = ""

}