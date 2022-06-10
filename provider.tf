terraform {
  required_providers {
    databricks = {
      source = "databrickslabs/databricks"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }
  }
}

provider "aws" {
  region = var.region
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}


