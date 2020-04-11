terraform {
  required_version = ">= 0.12"
}

resource "vault_jwt_auth_backend" "auth-backend" {
  description        = var.auth_description
  path               = var.path
  type               = var.type
  oidc_discovery_url = var.oidc_discovery_url
  bound_issuer       = var.bound_issuer
}

resource "vault_jwt_auth_backend_role" "role" {
  backend         = vault_jwt_auth_backend.auth-backend.path
  role_name       = var.role_name
  role_type       = var.role_type
  bound_audiences = var.bound_audiences
  user_claim      = var.user_claim
  token_policies  = var.token_policies
  token_ttl       = var.token_ttl
  token_max_ttl   = var.token_max_ttl
}
