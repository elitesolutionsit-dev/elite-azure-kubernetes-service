variable "environment" {
  type        = string
  description = "Tier to be deployed eg test, dev, prod, etc."

  validation {
    condition     = lower(var.environment) == var.environment
    error_message = "Please use lower cases for tiers."
  }
}

variable "buildregion" {
  type        = string
  description = "Region(s) to deploy resources"

  validation {
    condition     = var.buildregion == "eastus2" || var.buildregion == "eastus"
    error_message = "Please deployments are only permitted to eastus2 or eastus azure regions."
  }
}

variable "SubcriptionName" {
  type        = string
  description = "Region(s) to deploy resources"

  validation {
    condition     = var.SubcriptionName == "EliteSolutionsIT-DEV"
    error_message = "Please select EliteSolutionsIT-DEV as your default subscription."
  }
}