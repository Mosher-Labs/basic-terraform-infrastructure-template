terraform {
  required_version = "1.13.5"

  required_providers {
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
