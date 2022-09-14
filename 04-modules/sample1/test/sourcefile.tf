resource "aws_instance" "app" {
  ami   = "ami-0490430f92a24ee32"
  instance_type = "t2.micro"
}