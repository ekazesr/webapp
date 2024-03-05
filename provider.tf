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
  access_key="AKIATG2NJ2OEAZXM2Z7D"
  secret_key = "ABeI0pubTLhvCccxo/O4CiU3vMN4dt8IyYbdrgbz"

}