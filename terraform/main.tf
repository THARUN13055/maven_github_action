module "general" {
  source = "./modules/general"

  az_resource_group_name = local.az_resource_group_name
  location               = local.location
}

module "kubernetes_cluster" {
  source = "./modules/kubernetes"

  resource_group_name     = local.az_resource_group_name
  location                = local.location
  aks_name                = "springboot-aks"
  dns_prefix              = "dns1"
  default_node_pool_name  = "default"
  default_node_pool_count = 1
  vm_size                 = "Standard_D2_v2"
  os_type                 = "Linux"
  node_pool_type          = "VirtualMachineScaleSets"
  sku_tier                = "Free"
}
