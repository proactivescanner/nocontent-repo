provider "azurerm" {
  features {}
}

resource "azurerm_log_analytics_workspace" "log_analytics_fail" {
  name                = "loganalytics-fail"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  daily_quota_gb      = 1000

  tags = {
    Compliance = "NON_COMPLIANT"
    Reason     = "No ingestion cap configured"
    X-CS-Account-Id = "a77dabbb-bad5-4929-8194-ab32b10b1e6f"
    X-CS-Region = "eastus"
    X-CS-ResourceGroup = "QA_INFRA_RG"
    Owner = "sneha"
    Reason = "template"
    Environment = "test"
  }
}