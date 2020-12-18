provider "aws" {
  region = "${var.aws_region}"  # 引用了变量，变量值在variables.tf中
}

terraform {
  required_version = ">= 0.11.7"
  backend "s3" {
  encrypt = "true"
  bucket = "rubin-cn-stg-terraform-state"
  region = "cn-north-1"
  key = "vpc/stg_cn_rubin/terraform.tfstate"
  dynamodb_table = "terraform-lock"
  }
}