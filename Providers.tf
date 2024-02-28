terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
 subscription_id = "7b4aaa8b-8ed7-4b46-a50c-32750c8786e7"
  client_id = "5085fc2c-ec10-415d-89b6-312b67f7dcdc"
  client_secret = "zLF8Q~qcgxSoMztORcogc7zDVuJfzS978fzImcAc"
  tenant_id = "c77044d7-ba76-40e3-a712-385bb6d8c277"
  features {}
}
