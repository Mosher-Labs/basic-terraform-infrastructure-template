terraform {
  required_version = "1.10.4"

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
