data "aws_instances" "checking" {
  instance_state_names = ["running", "stopped"]
}

output "inst" {
//  value = data.aws_instances.checking
  value = data.aws_instances.checking.id
}

provider "aws" {
  region = "us-east-1"
}
