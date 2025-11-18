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

  cloud {
    organization = "mosher-labs"

    workspaces {
      name = "basic_terraform_infrastructure_template"
    }
  }
}
