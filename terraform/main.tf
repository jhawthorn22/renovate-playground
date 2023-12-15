terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "key-vault" {
  source  = "aztfm/key-vault/azurerm"
  version = "1.1.0"
  name = "renovate-playground-kv"
  resource_group_name = "renovate-playground-kv-rg"
  location = "uksouth"
  sku_name = "standard"
  tenant_id = "SOME_ID"
}
