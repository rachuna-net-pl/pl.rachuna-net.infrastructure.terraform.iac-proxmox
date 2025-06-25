module "containers_templates" {
  source = "./containers_templates/"
}

module "virtual_machines" {
  source = "./virtual_machines/"
}

module "cluster" {
  source = "./cluster/"
}