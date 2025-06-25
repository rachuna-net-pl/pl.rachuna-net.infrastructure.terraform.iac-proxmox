data "vault_kv_secret_v2" "gitlab_pl-rachuna-net" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net"
}
