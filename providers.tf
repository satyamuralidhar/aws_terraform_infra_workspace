terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.0.0"
    }
    curl = {
      source  = "anschoewe/curl"
      version = "1.0.2"
    }
  }
}
provider "curl" {
  
}