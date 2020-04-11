# vault-jwt-auth-backend module

Enable a Vault JWT authentication backend and create a role for that backend.

## Usage

```hcl
module "jwt" {
  source = "./vault-jwt-auth-backend"

  oidc_discovery_url = "http://my.discovery.url"
  bound_issuer       = "my_bound_issuer"
  role_name          = "my_role"
  bound_audiences    = ["my_field"]
  user_claim         = "my_claim"
  token_policies     = ["my_policy"]
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| vault | n/a |

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| auth\_description | OIDC/JWT auth method description | `string` | `"Terraform OIDC/JWT auth backend"` |
| bound\_audiences | List of aud claims to match against. Any match is sufficient | `list` | `[]` |
| bound\_issuer | The value against which to match the iss claim in a JWT | `string` | `""` |
| oidc\_client\_id | Client ID used for JWT/OIDC backends | `string` | `""` |
| oidc\_client\_secret | Client Secret used for OIDC backends | `string` | `""` |
| oidc\_discovery\_url | The OIDC Discovery URL | `string` | `""` |
| path | JWT auth metod path | `string` | `"jwt"` |
| role\_name | The name of the role | `string` | `""` |
| role\_type | Type of role, either "oidc" or "jwt" (default) | `string` | `"jwt"` |
| token\_max\_ttl | The maximum lifetime for generated tokens in number of seconds. | `string` | `"120"` |
| token\_policies | List of policies to encode onto generated tokens. | `list` | `[]` |
| token\_ttl | The incremental lifetime for generated tokens in number of seconds | `string` | `"60"` |
| type | Type of auth backend. Should be one of jwt or oidc | `string` | `"jwt"` |
| user\_claim | The claim to use to uniquely identify the user | `string` | `""` |

## Outputs

| Name | Description |
|------|-------------|
| jwt\_bound\_audiences | Bound audiences to the JWT authentication method |
| jwt\_bound\_issuer | Bound issuer to match the iss claim in a JWT |
| jwt\_oidc\_discovery\_url | OIDC discovery url |
| jwt\_role\_name | Role name linked to the JWT authentication backend |
| jwt\_user\_claim | User claims for the JWT authentication method |
| token\_policies | Token policies attached to the JWT authentication method role |
