terraform {
  backend "s3" {    
  }
}

provider "aws" {
  region     = var.region  
}

resource "random_integer" "rand_int" {
  min = 10000
  max = 99999  
}

resource "aws_s3_bucket" "aws-b1" {
  bucket = "ipsbucket-${random_integer.rand_int.result}"
  acl    = "private"
}
