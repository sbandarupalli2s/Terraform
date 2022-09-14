resource "aws_instance" "test" {
  ami = "ami-0490430f92a24ee32"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.secgro]
}

variable "secgro" {}