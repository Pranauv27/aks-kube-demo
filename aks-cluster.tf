resource "azurerm_resource_group" "default" {
  name     = "${var.resource_prefix}-rg"
  location = "eastus"

  tags = {
    env = "dev"
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "${var.resource_prefix}-aks"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "${var.resource_prefix}-k8s"
  kubernetes_version  = "1.26.3"

  default_node_pool {
    name            = "${var.resource_prefix}np01"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
    os_sku          = "Ubuntu"
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control_enabled = true

  tags = {
    env = "dev"
  }
}