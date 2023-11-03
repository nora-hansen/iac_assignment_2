###### General variables ######
variable "base_name" {
  type        = string
  default     = "nhhoperaterra"
  description = "value of the base name"
}

variable "rg_name" {
  type        = string
  default     = "nhh-rg"
  description = "Name of the resource group to create"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Azure region to deploy resources"
}

##########################################
###### Variable for the keyvault.tf ######
##########################################
variable "kv_name" {
  type        = string
  default     = "nhh-kv"
  description = "Name of the keyvault to create"
}

variable "sa_accesskey_name" {
  type        = string
  default     = "nhh-sa-accesskey"
  description = "Name of the keyvault secret for the storage account access key"
}

################################################
###### Variable for the storageaccount.tf ######
################################################

variable "sa_name" {
  type        = string
  default     = "nhhsa"
  description = "value of the storage account name"
}

variable "sc_name" {
  type        = string
  default     = "nhhsc"
  description = "value of the storage container name"
}
#################################################
###### Variables for the virtualnetwork.tf ######
#################################################

variable "vnet_name" {
  type        = string
  default     = "nhh-vnet"
  description = "Name of the virtual network to create"
}

variable "nsg_name" {
  type        = string
  default     = "nhh-nsg"
  description = "Name of the network security group to create"
}

variable "subnet_name" {
  type        = string
  default     = "nhh-subnet"
  description = "Name of the subnet to create"
}
#################################################
###### Variables for the virtualmachine.tf ######
#################################################

variable "vm_nic_name" {
  type        = string
  default     = "nhh-vm-nic"
  description = "Name of the network interface to create"
}

variable "vm_name" {
  type        = string
  default     = "nhh-vm"
  description = "Name of the virtual machine to create"
}

variable "pip_name" {
  type        = string
  default     = "pip"
  description = "Name of the public IP address to create"
}

variable "vm_username" {
  type        = string
  default     = "opteradmin"
  description = "Username for the virtual machine"
}

//
//  Tags
//

variable "company"  {
  type = string
  default = "OperaTerraAS"
  description = "Company name"
}

variable "project"  {
  type = string
  default = "ci_cd_workflow"
  description = "Project name"
}