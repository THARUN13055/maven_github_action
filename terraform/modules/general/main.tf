resource "azurerm_resource_group" "resource-group" {
  name     = var.az_resource_group_name
  location = var.location
}