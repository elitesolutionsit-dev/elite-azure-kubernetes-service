# Create a resource group
resource "azurerm_resource_group" "eliteacr" {
  name     = local.azurecontainerrgistry
  location = local.buildregion
}

resource "random_string" "random-name" {
  length  = 8
  upper   = false
  lower   = false
  numeric = false
  special = false
}
