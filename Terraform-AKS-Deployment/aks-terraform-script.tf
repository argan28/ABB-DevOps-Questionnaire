
provider "azurerm" {

  alias = "sub1"
  subscription_id = var.sub_id
  tenant_id = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "aks_rg" {
    provider = azurerm.sub1
    name     = var.resource_group_name
    location = var.location
}

resource "azurerm_log_analytics_workspace" "aks_logs" {
    provider = azurerm.sub1 
    name                = var.log_analytics_workspace_name
    location            = azurerm_resource_group.aks_rg.location
    resource_group_name = azurerm_resource_group.aks_rg.name
    sku                 = "PerGB2018"
    retention_in_days   = 30
}

resource "azurerm_kubernetes_cluster" "aks" {
    provider = azurerm.sub1
    name                = var.aks_cluster_name
    location            = azurerm_resource_group.aks_rg.location
    resource_group_name = azurerm_resource_group.aks_rg.name
    dns_prefix          = "aksdns"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.aks_logs.id
  }

  tags = {
    environment = "dev"
  }
}

# Output logs of resource deployment
output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "aks_resource_group" {
  value = azurerm_kubernetes_cluster.aks.resource_group_name
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.aks_logs.id
}

output "deployment_logs" {
  value = "Deployment completed successfully"
}
