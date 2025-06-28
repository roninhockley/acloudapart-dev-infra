# VPC Configuration Variables
variable "vpc_configs" {
  description = "Configuration for VPCs"
  type = map(object({
    name                    = string
    cidr_block             = string
    public_subnets         = list(string)
    private_subnets        = list(string)
    enable_dns_hostnames   = bool
    enable_dns_support     = bool
    create_internet_gateway = bool
    enable_nat_gateway     = bool
    single_nat_gateway     = bool
    map_public_ip_on_launch = bool
    environment            = string
  }))
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "acloudapart"
}

variable "managed_by" {
  description = "Tool used to manage resources"
  type        = string
  default     = "terraform"
}