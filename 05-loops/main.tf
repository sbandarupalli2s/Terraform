resource "aws_instance" "web" {
  count = "2"
  ami = "ami-0490430f92a24ee32"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web.id]
}