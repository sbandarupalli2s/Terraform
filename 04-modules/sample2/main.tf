module "EC2C" {
  source = "./ec2"
  secgro = module.secgro.secgro
}

module "secgro" {
  source = "./sg"
}