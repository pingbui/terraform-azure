output "id" {
  description = "The ID of the SSH Public Key."
  value       = azurerm_ssh_public_key.this.id
}

output "public_key" {
  description = "The content of the SSH Public Key."
  value       = azurerm_ssh_public_key.this.public_key
}
