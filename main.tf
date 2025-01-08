resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name       = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier               = var.account_tier
  account_replication_type = var.account_replication_type
  is_hns_enabled            = false
  min_tls_version           = var.min_tls_version
  tags = var.tags

  
  static_website {
    index_document              = var.index_document
    error_404_document          = var.error_404_document
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "$web"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "container"  
}

resource "azurerm_storage_blob" "index_html" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = var.index_html_path  
}

resource "azurerm_storage_blob" "error_404_html" {
  name                   = "404.html"
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = var.error_404_html_path  
}
