terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.17.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = "eu-west-2"
  access_key = "AKIA3XS5G77IYPA2B2K4"
  secret_key = "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"
}