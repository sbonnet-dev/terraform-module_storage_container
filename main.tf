resource "azurerm_storage_container" "storage_countainer" {
  name                 =  lower(format("sc%s%s%s", var.project, var.environment, var.name))

  storage_account_name = var.storage_account_name


}
