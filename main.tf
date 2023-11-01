
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "buckets" {
  for_each = var.s3_bucket_configs

  bucket = each.key
  acl    = var.s3_bucket_configs[each.key].acl

  tags = var.s3_bucket_configs[each.key].tags
}

