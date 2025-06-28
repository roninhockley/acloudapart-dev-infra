provider "aws" {
  # Tells the AWS provider which region to create the resources in.
  region = "us-east-2"

  # Optional: Tells the provider which AWS CLI profile to use for credentials.
  # profile = "aca-dev"

  # A best practice: define default tags to be applied to ALL resources
  # This is great for cost tracking and governance.
  default_tags {
    tags = {
      Project     = "A Cloud Apart"
      Environment = "development"
      ManagedBy   = "OpenTofu"
    }
  }
}