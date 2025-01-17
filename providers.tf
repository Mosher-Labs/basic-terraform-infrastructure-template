terraform {
  required_version = "1.10.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3"
    }
  }
}
