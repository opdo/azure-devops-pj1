variable "prefix" {
  description = "Prefix"
  default = "vinhpn"
}

variable "resourceGroup" {
  description = "Name of resource"
  default     = "Azuredevops"
}

variable "location" {
  description = "Azure Region"
  default = "East US" 
}

variable "username"{
  default = "adminuser"
}

variable "password"{
  default= "MyPass@123@321"
}

variable "packerImageId" {
  default = "/subscriptions/ad6befd3-6a77-4714-b24d-181b38cb2753/resourceGroups/Azuredevops/providers/Microsoft.Compute/images/myPackerImage"
}

variable "vmCount"{
  default = "2"
}