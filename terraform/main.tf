resource "azurerm_resource_group" "pearl" {
  name     = var.rg_group
  location = var.location
}

resource "azurerm_app_service_plan" "appservice" {
  name                = var.appserviceplan
  location            = azurerm_resource_group.pearl.location
  resource_group_name = azurerm_resource_group.pearl.name

  sku {
    tier = var.app_standard
    size = var.app_standard_size
  }
}

resource "azurerm_app_service" "appsrvplan" {
  name                = var.app_service
  location            = azurerm_resource_group.pearl.location
  resource_group_name = azurerm_resource_group.pearl.name
  app_service_plan_id = azurerm_app_service_plan.appservice.id

  site_config {
    dotnet_framework_version = var.dotnet_framework_version
    scm_type                 = var.scm_type
  }

  app_settings = {
    "SOME_KEY" = var.some_key
  }

  connection_string {
    name  = var.connection_string_name
    type  = var.connection_string_type
    value = var.connection_string_value
  }
}
