variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_A2_v2" # 4 GB, 2 CPU    https://docs.microsoft.com/en-us/azure/cloud-services/cloud-services-sizes-specs
  #default = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}

variable "vms" {
  description = "Maquinas Virtuales a crear"
  default = ["master","worker01"]  // default = ["master","nfs","worker01","worker02"] Tenemos limitacion y solo el master necesita 2 cpu
}