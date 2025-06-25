module "alpine-3-21" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/proxmox-download-container.git?ref=v1.0.0"

  datastore_id       = local.storage_name
  node_name          = local.default_node
  file_name          = "alpine-3.21.tar.zst"
  url                = "http://download.proxmox.com/images/system/alpine-3.21-default_20241217_amd64.tar.xz"
  checksum           = "3e5ded410fae18bd05031f47179f2394"
  checksum_algorithm = "md5"
}
