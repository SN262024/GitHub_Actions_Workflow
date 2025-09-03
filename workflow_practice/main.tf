terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-ayansh28"
    storage_account_name = "stgayansh28"
    container_name       = "containerayansh28"
    key                  = "ayansh28.tfstate"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "ff9732b6-644f-42fb-aad3-79fa3d280afd"
}

resource "azurerm_resource_group" "ayansh27" {
  name     = "rg-ayansh27"
  location = "centralindia"
}
resource "azurerm_storage_account" "ayansh27" {
  name                     = "stgayansh27"
  resource_group_name      = azurerm_resource_group.ayansh27.name
  location                 = azurerm_resource_group.ayansh27.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


}
