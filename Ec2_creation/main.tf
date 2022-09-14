resource "aws_instance" "test1" {
  ami = "ami-0490430f92a24ee32"
  instance_type = "t2.micro"
  security_groups = [sg-05ab115ab91269836]
}