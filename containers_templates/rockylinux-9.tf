module "rockylinux-9" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/proxmox-download-container.git?ref=v1.0.0"

  datastore_id       = local.storage_name
  node_name          = local.default_node
  file_name          = "rockylinux-9.tar.xz"
  url                = "http://download.proxmox.com/images/system/rockylinux-9-default_20240912_amd64.tar.xz"
  checksum           = "3a782d5d1c33d05eeff2e21579bdfae8"
  checksum_algorithm = "md5"
}
