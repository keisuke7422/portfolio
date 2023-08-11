provider "aws" { 
  profile = "default"
  region  = "ap-northeast-1" 
}

terraform {
  backend "s3" {
    region = "ap-northeast-1"
    bucket = "hirota-tf-bucket"
    key    = "test/terraform.tfstate"
  }
}