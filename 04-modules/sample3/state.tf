terraform {
  backend "s3" {
    bucket = "terra-backup007"
    key    = "sample2/terraform.tfstate"
    region = "us-east-1"
  }
}