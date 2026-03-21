module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  public_subnet_1_cidr = var.public_subnet_1_cidr
  public_subnet_2_cidr = var.public_subnet_2_cidr
  az_1                 = var.az_1
  az_2                 = var.az_2
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source           = "./modules/eks"
  cluster_name     = var.cluster_name
  cluster_role_arn = module.iam.eks_cluster_role_arn
  subnet_ids       = module.vpc.public_subnet_ids
}
