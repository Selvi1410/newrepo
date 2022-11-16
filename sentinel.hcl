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
policy "allowed-region" {
  source  = "./allowed-region.sentinel"
  enforcement_level = "hard-mandatory"
}
policy "approved-ami" {
  source  = "./approved-ami.sentinel"
  enforcement_level = "hard-mandatory"
}
policy "allowed-providers" {
  source  = "./allowed-providers.sentinel"
  enforcement_level = "hard-mandatory"
}
policy "allowed-resources" {
  source  = "./allowed-resources.sentinel"
  enforcement_level = "hard-mandatory"
}
policy "require-most-recent-AMI-version" {
  source  = "./require-most-recent-AMI-version.sentinel"
  enforcement_level = "hard-mandatory"
}
policy "enforce-mandatory-tags" {
  source  = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "hard-mandatory"
}
policy "allowed-volume-size" {
  source  = "./allowed-volume-size.sentinel"
  enforcement_level = "hard-mandatory"
}
