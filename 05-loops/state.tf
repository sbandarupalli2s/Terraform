terraform {
  backend "s3" {
    bucket = "terra-backup007"
    key    = "loops/terraform.tfstate"
    region = "us-east-1"
  }
}