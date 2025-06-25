# variable "proxmox_endpoint" {
#   type        = string
#   description = "Proxmox endpoint"
# }

# variable "proxmox_username" {
#   type        = string
#   description = "Proxmox username"
#   sensitive   = true
# }

# variable "proxmox_password" {
#   type        = string
#   description = "Proxmox password"
# }

variable "proxmox_insecure" {
  type        = bool
  description = "Proxmox insecure"
  default     = false
}

# variable "technical_user_ssh_pub_key" {
#   description = "The technical user ssh public key"
#   type        = string
#   sensitive   = true
# }