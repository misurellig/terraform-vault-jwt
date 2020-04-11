terraform {
  required_version = ">= 0.12"
}

locals {
  demo_secrets_path = join("/", [var.mount_path, var.secrets_path])
}

data "vault_policy_document" "owner" {
  rule {
    path         = join("/", [local.demo_secrets_path, "*"])
    capabilities = var.rw_capabilitites
    description  = var.rw_description
  }
}

resource "vault_policy" "owner" {
  name   = var.policy_owner_name
  policy = data.vault_policy_document.owner.hcl
}

data "vault_policy_document" "reader" {
  rule {
    path         = join("/", [var.mount_path, "*"])
    capabilities = var.l_capabilitites
    description  = var.l_description
  }
  rule {
    path         = join("/", [local.demo_secrets_path, "*"])
    capabilities = var.r_capabilitites
    description  = var.r_description
  }
}

resource "vault_policy" "reader" {
  name   = var.policy_reader_name
  policy = data.vault_policy_document.reader.hcl
}

resource "vault_generic_secret" "demo_secrets" {
  path = local.demo_secrets_path

  data_json = var.secrets_json_file
}
