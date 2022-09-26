module "iti_network" {
  # sourcing the module location.
  source = "/home/GeniusBoy/Desktop/Terraform/Lab2/network"
  # then define the variables that are declared in the module.
  vpc_cidr              = var.vpc_cidr
  subnet_public1a_cidr  = var.subnet_public1a_cidr
  subnet_public1b_cidr  = var.subnet_public1b_cidr
  subnet_private1a_cidr = var.subnet_private1a_cidr
  subnet_private1b_cidr = var.subnet_private1b_cidr
  region                = var.region
  avz_1a                = var.avz_1a
  avz_1b                = var.avz_1b
}