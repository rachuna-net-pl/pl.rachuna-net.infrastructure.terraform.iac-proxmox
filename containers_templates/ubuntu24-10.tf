module "ubuntu24-10" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/proxmox-download-container.git?ref=v1.0.0"

  datastore_id       = local.storage_name
  node_name          = local.default_node
  file_name          = "ubuntu-24.10.tar.zst"
  url                = "http://download.proxmox.com/images/system/ubuntu-24.10-standard_24.10-1_amd64.tar.zst"
  checksum           = "ac4cb1924de8091eb91226a80453186c"
  checksum_algorithm = "md5"
}
