project_name = "A Cloud Apart"
managed_by   = "opentofu"

vpc_configs = {
  dev = {
    name                    = "dev-vpc"
    cidr_block             = "10.0.0.0/16"
    public_subnets         = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnets        = ["10.0.101.0/24", "10.0.102.0/24"]
    enable_dns_hostnames   = true
    enable_dns_support     = true
    create_internet_gateway = true
    enable_nat_gateway     = true
    single_nat_gateway     = false
    map_public_ip_on_launch = true
    environment            = "dev"
  }
  staging = {
    name                    = "staging-vpc"
    cidr_block             = "10.1.0.0/16"
    public_subnets         = ["10.1.1.0/24", "10.1.2.0/24"]
    private_subnets        = ["10.1.101.0/24", "10.1.102.0/24"]
    enable_dns_hostnames   = true
    enable_dns_support     = true
    create_internet_gateway = true
    enable_nat_gateway     = true
    single_nat_gateway     = false
    map_public_ip_on_launch = true
    environment            = "staging"
  }
}