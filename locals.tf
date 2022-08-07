locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service     = "devOps"
    Owner       = "elitesolutionsit"
    environment = var.environment
    ManagedWith = "terraform"

  }

  buildregion                      = var.buildregion
  SubcriptionName                  = var.SubcriptionName
  azurecontainerrgistry            = "eliteclusterdemo-devregistry"
  azurekubernetesrg                = "eliteclusterdemo-devrg"
  cluster_name                     = "eliteclusterdemodev"
  log_analytics_workspace_location = "eastus2"
  log_analytics_workspace_name     = "eliteclusterdemoAnalytics"
}