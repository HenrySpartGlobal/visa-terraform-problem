terraform {
  required_version = "~> 0.14"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.1"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.2"
    }
  }
}