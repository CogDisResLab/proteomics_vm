terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0"
    }

  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {

    tags = {
      Environment = var.project_environment
      Project     = "Clinical Proteomics"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "useast1"
  default_tags {

    tags = {
      Environment = var.project_environment
      Project     = "Clinical Proteomics"
    }
  }
}
