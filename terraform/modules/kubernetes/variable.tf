variable "aks_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "default_node_pool_name" {
  type = string
}

variable "default_node_pool_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "os_type" {
  type = string
}

variable "node_pool_type" {
  type = string
}

variable "sku_tier" {
  type = string
}