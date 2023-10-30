terraform {
  required_version = "1.6.0"
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
  # backend "azurerm" {
  #   resource_group_name  = "rg-backend-tfstate"
  #   storage_account_name = "sabetfs3a9npz46p2"
  #   container_name       = "tfstate"
  #   key                  = "demo-infra.terraform.tfstate${local.workspace_suffix}"
  # }
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