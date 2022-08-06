# Create a resource group
resource "azurerm_resource_group" "eliteacr" {
  name     = local.azurecontainerrgistry
  location = local.buildregion
}
resource "random_string" "random" {
  length           = 5
  special          = false
  override_special = "/@£$"
}