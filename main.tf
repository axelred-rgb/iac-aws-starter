provider "aws" {
  region = var.aws_region
}

module "network" {
  source       = "./modules/network"
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
  az           = var.az
}

module "security" {
  source           = "./modules/security"
  key_name         = var.key_name
  public_key_path  = var.public_key_path
  vpc_id           = module.network.vpc_id
}

module "compute" {
  source             = "./modules/compute"
  instance_name      = var.instance_name
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  user_data = var.user_data # ✅ c’est ICI qu’on lit le script
  subnet_id          = module.network.subnet_id
  security_group_id  = module.security.security_group_id
}

output "instance_public_ip" {
  value = module.compute.public_ip
}
