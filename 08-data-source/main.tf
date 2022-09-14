data "aws_instance" "checking" {
  instance_state_names = ["running", "stopped"]
}

output "instances" {
  value = data.aws_instance.checking
}

provider "aws" {
  region = "us-east-1"
}
