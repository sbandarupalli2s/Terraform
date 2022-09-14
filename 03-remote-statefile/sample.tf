terraform {
  backend "s3" {
    bucket = "terra-backup007"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "app" {
  ami   = "ami-0490430f92a24ee32"
  instance_type = "t3.micro"
}