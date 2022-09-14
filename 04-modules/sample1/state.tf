terraform {
  backend "s3" {
    bucket = "terra-backup007"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}