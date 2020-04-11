terraform {
  required_version = ">= 0.12"
}

provider "vault" {
  address = var.vault_endpoint
}

locals {
  app_name = "suite"
}

module "demo-utils" {
  source = "./modules/vault-demo-utils"

  mount_path         = "secret"
  secrets_path       = local.app_name
  policy_owner_name  = join("-", [local.app_name, "owner"])
  policy_reader_name = join("-", [local.app_name, "reader"])
}

module "jwt" {
  source = "./modules/vault-jwt-auth-backend"

  oidc_discovery_url = "http://localhost:8080/auth/realms/master"
  bound_issuer       = "http://localhost:8080/auth/realms/master"
  role_name          = join("-", [local.app_name, "reader"])
  bound_audiences    = ["account"]
  user_claim         = "preferred_username"
  token_policies     = [module.demo-utils.policy_reader_name]
}
