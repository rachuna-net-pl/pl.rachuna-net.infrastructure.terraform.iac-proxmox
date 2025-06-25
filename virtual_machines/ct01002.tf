module "ct01002" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/proxmox-container.git?ref=v1.0.0"

  hostname      = "ct01002.rachuna-net.pl"
  description   = "gitlab-runner s2"
  node_name     = "pve-s2"
  vm_id         = 1002
  pool_id       = "gitlab-runner"
  protection    = true
  start_on_boot = true
  tags          = ["gitlab-runner", "ubuntu"]
  unprivileged  = true
  is_dmz        = false
  mac_address   = "BC:24:11:BA:0F:CD"

  cpu_cores = 2
  memory = {
    dedicated = 1024
    swap      = 1024
  }
  disk = {
    storage_name = local.storage_name
    disk_size    = 32
  }

  operating_system = {
    template_file = join("/", [local.ct_storage_name, "ubuntu-24.10.tar.zst"])
    type          = "ubuntu"
  }

  root = {
    password    = random_password.password.result
    ssh_pub_key = data.vault_kv_secret_v2.gitlab_pl-rachuna-net.data["GITLAB_SSH_PUBKEY"]
  }
}