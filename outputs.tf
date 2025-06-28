# VPC Outputs
output "vpc_ids" {
  description = "IDs of the VPCs"
  value = {
    for key, vpc in module.vpcs : key => vpc.vpc_id
  }
}

output "vpc_cidr_blocks" {
  description = "CIDR blocks of the VPCs"
  value = {
    for key, vpc in module.vpcs : key => vpc.vpc_cidr_block
  }
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = {
    for key, vpc in module.vpcs : key => vpc.public_subnets
  }
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value = {
    for key, vpc in module.vpcs : key => vpc.private_subnets
  }
}

output "internet_gateway_ids" {
  description = "IDs of the Internet Gateways"
  value = {
    for key, vpc in module.vpcs : key => vpc.igw_id
  }
}