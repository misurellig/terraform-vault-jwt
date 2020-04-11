output "jwt_auth_backend_oidc_discovery_url" {
  description = "OIDC discovery url for the authentication backend"
  value       = module.jwt.jwt_oidc_discovery_url
}

output "jwt_auth_backend_bound_issuer" {
  description = "Bound issuer for the authentication backend"
  value       = module.jwt.jwt_bound_issuer
}

output "jwt_auth_backend_user_claim" {
  description = "User claims for the JWT authentication method"
  value       = module.jwt.jwt_user_claim
}
