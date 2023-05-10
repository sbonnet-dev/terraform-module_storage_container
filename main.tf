resource "azurerm_storage_container" "storage_countainer" {
  name                 =  lower(format("sc%s%s%s", var.project, var.environment, var.name))

  storage_account_name = var.storage_account_name
}

variable "environment" {
  type        = string
  description = "Specify the type of environement"
  default     = "dev"

  validation {
    condition = contains([
      "dev",
      "prod",
    ], var.environment)
    error_message = "Then environment value is invalid."
  }
}