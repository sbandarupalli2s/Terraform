resource "aws_instance" "web" {
  ami = "ami-0490430f92a24ee32"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.web.id]
}