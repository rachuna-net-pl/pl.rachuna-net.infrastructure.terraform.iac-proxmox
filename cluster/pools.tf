resource "proxmox_virtual_environment_pool" "gitlab_runner" {
  comment = "GitLab Runner Pool"
  pool_id = "gitlab-runner"
}

resource "proxmox_virtual_environment_pool" "templates" {
  comment = "Templates Pool"
  pool_id = "templates"
}

resource "proxmox_virtual_environment_pool" "vault_consul" {
  comment = "Vault & Consul Pool"
  pool_id = "vault-consul"
}

resource "proxmox_virtual_environment_pool" "web_proxy" {
  comment = "Web Proxy Pool"
  pool_id = "web-proxy"
}