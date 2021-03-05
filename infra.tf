provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  features {}
}
resource "azurerm_resource_group" "demo" {
  name     = "RGAzureDemoErick"
  location = "East US"
  tags = {
    Ambiente = "Desarrollo"
  } 
}
resource "azurerm_storage_account" "stgid" {
  name                     = "staeortiz"
  resource_group_name      = "${azurerm_resource_group.demo.name}"
  location                 = "${azurerm_resource_group.demo.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Ambiente = "Desarrollo"
  }
}