resource "aws_security_group" "all" {
  name = "all"
  description = "open to all"
  vpc_id = "vpc-00d8562e94bdc1820"

  ingress {
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
    description = "SSH"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
    description = "HTTP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}