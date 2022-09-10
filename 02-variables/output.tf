variable "vartest" {
  default ="Chanti"
}

output "vartest" {
  value = var.vartest
}

variable "test1" {}

output "test1" {
  value = var.test1
}

output "test2" {
  value = var.test2
}

variable "test2" {}