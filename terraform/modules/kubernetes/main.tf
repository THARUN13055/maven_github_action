module "general" {
  source                 = "../general"
  az_resource_group_name = var.resource_group_name
  location               = var.location
}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  sku_tier            = var.sku_tier

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_count
    vm_size    = var.vm_size
    type       = var.node_pool_type
  }

  identity {
    type = "SystemAssigned"
  }
  depends_on = [
    module.general
  ]

}

resource "azurerm_kubernetes_cluster_node_pool" "aks-node-pool" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks-cluster.id
  vm_size               = var.vm_size
  node_count            = var.default_node_pool_count
  os_type               = var.os_type
  depends_on = [
    azurerm_kubernetes_cluster.aks-cluster
  ]
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks-cluster.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks-cluster.kube_config_raw
  sensitive = true
}