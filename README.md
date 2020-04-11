# terraform-vault-jwt

This repo contains a set of modules to setup a [Vault JWT authentication method](https://www.vaultproject.io/api-docs/auth/jwt) and create a bunch of configurations to demo its main functionalities.

This Module includes:

  * The [vault-demo-utils](./modules/vault-demo-utils/) module to setup the demo utils
  * The [vault-jwt-auth-backend](./modules/vault-jwt-auth-backend) module to enable the JWT authentication method

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

Other than the terraform version, this module requires proper credentials to authentication against the Vault endpoint to configure as well as an [OIDC discovery url](https://openid.net/specs/openid-connect-discovery-1_0.html) for the End-User's OpenID Provider.


## Providers

| Name | Version |
|------|---------|
| vault | n/a |

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| vault\_endpoint | Vault endpoint | `string` | `"http://127.0.0.1:8200"` |

## Outputs

| Name | Description |
|------|-------------|
| jwt\_auth\_backend\_bound\_issuer | Bound issuer for the authentication backend |
| jwt\_auth\_backend\_oidc\_discovery\_url | OIDC discovery url for the authentication backend |
| jwt\_auth\_backend\_user\_claim | User claims for the JWT authentication method |
