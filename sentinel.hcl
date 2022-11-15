module "tfplan-functions" {
  source = "./tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./tfconfig-functions.sentinel"
}
policy "restrict-instance-type" {
  source  = "./restrict-instance-type.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "allowed-availability-zones" {
  source  = "./allowed-availability-zones.sentinel"
  enforcement_level = "soft-mandatory"
}
policy "allowed-allowed-region" {
  source  = "./allowed-region.sentinel"
  enforcement_level = "hard-mandatory"
}
