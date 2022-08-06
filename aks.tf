resource "azuread_application" "eliteclusterdemodev" {
  display_name = "eliteclusterdemodev"
}

resource "azuread_service_principal" "eliteclusterdemodev-SP" {
  application_id = azuread_application.eliteclusterdemodev.application_id
}

resource "random_password" "eliteclusterdemodev-password" {
  length  = 20
  special = false
}
resource "azuread_service_principal_password" "eliteclusterdemodev-SP" {
  service_principal_id = azuread_service_principal.eliteclusterdemodev-SP.id
  value = random_password.eliteclusterdemodev-password.result
}