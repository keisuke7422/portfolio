provider "aws" { 
  access_key = "AKIAZ24KUXYLBRJT53UE" 
  secret_key = "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" 
  region     = "ap-northeast-1" 
}

terraform {
  backend "s3" {
    region = "ap-northeast-1"
    bucket = "hirota-tf-bucket"
    key    = "prod1/terraform.tfstate"
  }
}