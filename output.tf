output "static_website_url" {
  value       = azurerm_storage_account.example.primary_web_endpoint
  description = "The URL of the static website"
}
