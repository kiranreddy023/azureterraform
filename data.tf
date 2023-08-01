data "azurerm_container_registry" "acr" {
  name                = azurerm_container_registry.acr.name
  resource_group_name = azurerm_container_registry.acr.resource_group_name
}

output "registry_login_server" {
  value = data.azurerm_container_registry.acr.login_server
}

output "registry_admin_username" {
  value = data.azurerm_container_registry.acr.admin_username
}

output "registry_admin_password" {
  value = data.azurerm_container_registry.acr.admin_password
}
