terraform {
  cloud {
    organization = "infernocircus"

    workspaces {
      name = "infrastructure"
    }
  }
  
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    # namecheap = {
    #   source = "namecheap/namecheap"
    #   version = "~> 2.0"
    # }

    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }

  required_version = ">= 1.7.3"
}
