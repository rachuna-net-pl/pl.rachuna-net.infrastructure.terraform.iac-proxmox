module "almalinux-9" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/proxmox-download-container.git?ref=v1.0.0"

  datastore_id       = local.storage_name
  node_name          = local.default_node
  file_name          = "almalinux-9.tar.xz"
  url                = "http://download.proxmox.com/images/system/almalinux-9-default_20240911_amd64.tar.xz"
  checksum           = "aec3769056165ed72a2523e6a2e0b12f"
  checksum_algorithm = "md5"
}
