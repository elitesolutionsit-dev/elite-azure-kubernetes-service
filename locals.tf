locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service     = "devOps"
    Owner       = "elitesolutionsit"
    environment = var.environment
    ManagedWith = "terraform"

  }

  buildregion           = var.buildregion
  SubcriptionName       = var.SubcriptionName
  azurecontainerrgistry = "eliteclusterdemo-devregistry"
}