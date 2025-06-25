terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.76.1"
    }
  }
  required_version = ">= 1.10.4"
  backend "http" {}
}

provider "proxmox" {
  endpoint = data.vault_kv_secret_v2.gitlab_pl-rachuna-net-infrastructure-terraform-iac-proxmox.data["proxmox_endpoint"]
  username = data.vault_kv_secret_v2.gitlab_pl-rachuna-net-infrastructure-terraform-iac-proxmox.data["proxmox_username"]
  password = data.vault_kv_secret_v2.gitlab_pl-rachuna-net-infrastructure-terraform-iac-proxmox.data["proxmox_password"]
  insecure = var.proxmox_insecure
}