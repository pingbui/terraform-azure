variable "group_name" {
  description = "The name of group in AD."
  type        = string
  default     = "Admin"
}

variable "get_group_id" {
  description = "Whether to get group_id."
  type        = bool
  default     = true
}
