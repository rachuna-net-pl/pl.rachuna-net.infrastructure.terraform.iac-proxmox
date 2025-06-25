data "vault_kv_secret_v2" "gitlab_pl-rachuna-net-infrastructure-terraform-iac-proxmox" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/infrastructure/terraform/iac-proxmox"
}