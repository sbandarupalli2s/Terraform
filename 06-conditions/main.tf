resource "aws_instance" "myinstance" {
  ami = "ami-0490430f92a24ee32"
  instance_type = var.inst_type == null ? "t3.micro" : var.inst_type
}

variable "inst_type" {
  default = null
}