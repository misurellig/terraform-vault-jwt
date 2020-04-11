variable "auth_description" {
  description = "OIDC/JWT auth method description"
  default     = "Terraform OIDC/JWT auth backend"
}

variable "path" {
  description = "JWT auth metod path"
  default     = "jwt"
}

variable "type" {
  description = "Type of auth backend. Should be one of jwt or oidc"
  default     = "jwt"
}

variable "oidc_discovery_url" {
  description = "The OIDC Discovery URL"
  default     = ""
}

variable "oidc_client_id" {
  description = "Client ID used for JWT/OIDC backends"
  default     = ""
}

variable "oidc_client_secret" {
  description = "Client Secret used for OIDC backends"
  default     = ""
}

variable "bound_issuer" {
  description = "The value against which to match the iss claim in a JWT"
  default     = ""
}

variable "role_name" {
  description = "The name of the role"
  default     = ""
}

variable "role_type" {
  description = "Type of role, either \"oidc\" or \"jwt\" (default)"
  default     = "jwt"
}
variable "bound_audiences" {
  description = "List of aud claims to match against. Any match is sufficient"
  default     = []
}

variable "user_claim" {
  description = "The claim to use to uniquely identify the user"
  default     = ""
}

variable "token_policies" {
  description = "List of policies to encode onto generated tokens."
  default     = []
}

variable "token_ttl" {
  description = "The incremental lifetime for generated tokens in number of seconds"
  default     = "60"
}

variable "token_max_ttl" {
  description = "The maximum lifetime for generated tokens in number of seconds."
  default     = "120"
}
