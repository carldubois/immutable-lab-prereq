terraform {
  required_providers {
    azurerm = {
      version = "2.32.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "baseImageRG" {
  name     = "immutableLabBase"
  location = "centralus"
}

resource "azurerm_marketplace_agreement" "example" {
  publisher = "tunnelbiz"
  offer     = "centos9"
  plan      = "centos9"
}
