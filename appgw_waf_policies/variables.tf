variable "created" {
  description = "Whether to create the policy."
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the policy."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group where to create the resource."
  type        = string
}

variable "location" {
  description = "location of the resource"
  type        = string
}

variable "custom_rules" {
  description = "A list of custom rules."
  type        = any
  default     = []
}

variable "policy_settings" {
  description = "The settings of the policy."
  type        = map(string)
  default     = {}
}

variable "managed_rules" {
  description = "The managed rules."
  type        = map(any)
  default     = {}
}

variable "tags" {
  description = "A map of tags for the resource."
  type        = map(string)
  default     = {}
}
