terraform {
    required_providers {
      azurerm ={
        source = "hashicorp/azurerm"
        version = "3.93.0"
      }
    }
}

provider "azurerm" {
  subscription_id = "7b4aaa8b-8ed7-4b46-a50c-32750c8786e7"
  client_id = "5085fc2c-ec10-415d-89b6-312b67f7dcdc"
  client_secret = "zLF8Q~qcgxSoMztORcogc7zDVuJfzS978fzImcAc"
  tenant_id = "c77044d7-ba76-40e3-a712-385bb6d8c277"
  features {
    
  }
}


# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

# Virtual Network
resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  tags = {
    environment = "production"
  }
}
