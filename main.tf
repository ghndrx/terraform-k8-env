module "proxmox_provider" {
  source = "./provider_module"
  url = var.url
  username = var.username
  password = var.password
}

module "masterNode" {
  source = "./virtual_machine_module"
  vcpu = var.masterNode_vcpu
  memory = var.masterNode_memory
  storage_local = var.masterNode_storage_local
  network_tag = var.network_tag
}

module "workerNode1" {
  source = "./virtual_machine_module"
  vcpu = var.workerNode_vcpu
  memory = var.workerNode_memory
  storage_local = var.workerNode_storage_local
  storage_local4tb = var.workerNode_storage_local4tb
  network_tag = var.network_tag
}

module "workerNode2" {
  source = "./virtual_machine_module"
  vcpu = var.workerNode_vcpu
  memory = var.workerNode_memory
  storage_local = var.workerNode_storage_local
  storage_local4tb = var.workerNode_storage_local4tb
  network_tag = var.network_tag
}
