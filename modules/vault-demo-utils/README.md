# vault-demo-utils module

Just some utilities when dealing with demos about Hashicorp Vault.

## Usage

```hcl
module "demo-utils" {
  source = "./vault-demo-utils"

  mount_path         = "secret"
  secrets_path       = "my_secrets_path"
  policy_owner_name  = "my_policy_owner_name"
  policy_reader_name = "my_policy_reader_name"
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
| l\_capabilitites | Policy capabilities for secrets reader | `list` | <pre>[<br>  "read",<br>  "list"<br>]</pre> |
| l\_description | Policy description | `string` | `"allow list on paths"` |
| mount\_path | Generic secrets backend | `string` | `""` |
| policy\_owner\_name | Owner policy name | `string` | `""` |
| policy\_reader\_name | Reader policy name | `string` | `""` |
| r\_capabilitites | Policy capabilities for secrets reader | `list` | <pre>[<br>  "read",<br>  "list"<br>]</pre> |
| r\_description | Policy description | `string` | `"allow read only on secrets"` |
| rw\_capabilitites | Policy capabilities for secrets owner | `list` | <pre>[<br>  "create",<br>  "read",<br>  "update",<br>  "delete",<br>  "list"<br>]</pre> |
| rw\_description | Policy description | `string` | `"allow all on secrets"` |
| secret\_type | Generic secret type | `string` | `"generic"` |
| secrets\_json\_file | Just a couple of unuseful secrets | `string` | `"{\n\"secret-1\": \"i_am_the_secret_1\",\n\"secret-2\": \"i_am_the_secret_2\"\n}\n"` |
| secrets\_path | Path of the generic secrets | `string` | `""` |

## Outputs

| Name | Description |
|------|-------------|
| policy\_owner\_name | n/a |
| policy\_reader\_name | n/a |
