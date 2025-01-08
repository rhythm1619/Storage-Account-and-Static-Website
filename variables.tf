variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the resource group will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the Storage Account (e.g., Standard, Premium)."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the Storage Account (e.g., LRS, GRS)."
  type        = string
  default     = "LRS"
}

variable "min_tls_version" {
  description = "The minimum allowed TLS version."
  type        = string
  default     = "TLS1_2"
}

variable "index_document" {
  description = "The name of the index document for the static website."
  type        = string
}

variable "error_404_document" {
  description = "The name of the error document for the static website."
  type        = string
}

variable "index_html_path" {
  description = "The local path to the index.html file."
  type        = string
}

variable "error_404_html_path" {
  description = "The local path to the 404.html file."
  type        = string
}

variable "tags" {
  description = "A set of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
