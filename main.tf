resource "azurerm_storage_container" "storage_countainer" {
  name                 = var.name
  storage_account_name = var.storage_account_name
}