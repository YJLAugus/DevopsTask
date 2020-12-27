provider "aws" {
  region = "${var.aws_region}"  
}

terraform {
  required_version = ">= 0.11.7"
  backend "s3" {
  encrypt = "true"
  bucket = "rubin-cn-stg-terraform-state"
  region = "us-east-2"
  key = "vpc/stg_cn_rubin/terraform.tfstate"
  dynamodb_table = "terraform-lock"
  }
}