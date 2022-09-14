resource "aws_instance" "web" {
  ami                    = "ami-0490430f92a24ee32"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-05ab115ab91269836"]
}

provider "aws" {
  region = "us-east-1"
}

resource "null_resource" "cli" {
  triggers = {
    abc = timestamp()
  }
  provisioner "remote-exec" {

    connection {
      host     = aws_instance.web.public_ip
      user     = "root"
      password = "DevOps321"
    }

    inline = [
      "echo Hello Galaxy\n", "echo hello Chanti\n", "cd ~", "mkdir MYFOLDER"
    ]

  }
}