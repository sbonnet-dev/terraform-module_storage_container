variable "name" {
  type        = string
  description = "Resource group name"
}

variable "storage_account_name" {
  type        = string
  description = "Storage account name"
}

variable "project" {
  type        = string
  description = "Project name"
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
