terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "nhh-nhh-rg-backend"
    storage_account_name = "nhhsaoperaterrav8mahr6q"
    container_name       = "nhhscoperaterra"
    key                  = "infra-dev.terraform.tfstate"

  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

provider "random" {
  # Configuration options
}