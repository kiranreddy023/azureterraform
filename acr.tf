resource "azurerm_resource_group" "tfrg" {
  name     = "tfrg"
  location = "West Europe"
}

resource "azurerm_container_registry" "acr" {
  name                = "kiran19931994"
  resource_group_name = azurerm_resource_group.tfrg.name
  location            = azurerm_resource_group.tfrg.location
  sku                 = "Standard"
  admin_enabled       = true
}