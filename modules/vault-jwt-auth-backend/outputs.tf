output "jwt_oidc_discovery_url" {
  description = "OIDC discovery url"
  value       = vault_jwt_auth_backend.auth-backend.oidc_discovery_url
}

output "jwt_bound_issuer" {
  description = "Bound issuer to match the iss claim in a JWT"
  value       = vault_jwt_auth_backend.auth-backend.bound_issuer
}

output "jwt_role_name" {
  description = "Role name linked to the JWT authentication backend"
  value       = vault_jwt_auth_backend_role.role.role_name
}

output "jwt_bound_audiences" {
  description = "Bound audiences to the JWT authentication method"
  value       = vault_jwt_auth_backend_role.role.bound_audiences
}

output "jwt_user_claim" {
  description = "User claims for the JWT authentication method"
  value       = vault_jwt_auth_backend_role.role.user_claim
}

output "token_policies" {
  description = "Token policies attached to the JWT authentication method role"
  value       = vault_jwt_auth_backend_role.role.token_policies
}
