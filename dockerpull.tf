data "docker_registry_image" "dockerpull" {
  name       = "${data.azurerm_container_registry.acr.login_server}/image_name:tag"
  registry   = data.azurerm_container_registry.acr.login_server
  username   = data.azurerm_container_registry.acr.admin_username
  password   = data.azurerm_container_registry.acr.admin_password
}

resource "docker_image" "amazon" {
  name         = "amazon:v1"
  pull_triggers = [data.docker_registry_image.dockerpull.digest]
}