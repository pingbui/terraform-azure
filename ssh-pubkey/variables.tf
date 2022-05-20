variable "resource_group_name" {
  description = "The name of the Resource Group where the SSH Public Key should exist."
  type        = string
}

variable "location" {
  description = "The Azure Region where the SSH Public Key should exist."
  type        = string
}

variable "name" {
  description = "The name which should be used for this SSH Public Key."
  type        = string
}

variable "public_key" {
  description = "SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format."
  type        = string
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the SSH Public Key."
  type        = map(string)
  default     = {}
}
