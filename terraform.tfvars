resource_group_name = "rg-static-website"
location            = "East US"

storage_account_name     = "examplestorageacctrhy"  
account_tier              = "Standard"
account_replication_type = "LRS"  
min_tls_version          = "TLS1_2"

index_document    = "index.html"
error_404_document = "404.html"

index_html_path   = "path/to/index.html"  
error_404_html_path = "path/to/404.html"  

tags = {
  environment = "production"
  project     = "static-website"
}
