# VPCs using shared module with variables
module "vpcs" {
  source = "../terraform-shared-modules/modules/vpc"
  
  for_each = var.vpc_configs

  name       = each.value.name
  cidr_block = each.value.cidr_block

  public_subnets  = each.value.public_subnets
  private_subnets = each.value.private_subnets

  enable_dns_hostnames      = each.value.enable_dns_hostnames
  enable_dns_support        = each.value.enable_dns_support
  create_internet_gateway   = each.value.create_internet_gateway
  enable_nat_gateway        = each.value.enable_nat_gateway
  single_nat_gateway        = each.value.single_nat_gateway
  map_public_ip_on_launch   = each.value.map_public_ip_on_launch

  tags = {
    Environment = each.value.environment
    Project     = var.project_name
    ManagedBy   = var.managed_by
  }
}