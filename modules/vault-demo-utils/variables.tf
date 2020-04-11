variable "rw_capabilitites" {
  description = "Policy capabilities for secrets owner"
  default     = ["create", "read", "update", "delete", "list"]
}

variable "rw_description" {
  description = "Policy description"
  default     = "allow all on secrets"
}

variable "l_capabilitites" {
  description = "Policy capabilities for secrets reader"
  default     = ["read", "list"]
}

variable "l_description" {
  description = "Policy description"
  default     = "allow list on paths"
}

variable "r_capabilitites" {
  description = "Policy capabilities for secrets reader"
  default     = ["read", "list"]
}

variable "r_description" {
  description = "Policy description"
  default     = "allow read only on secrets"
}

variable "policy_owner_name" {
  description = "Owner policy name"
  default     = ""
}

variable "policy_reader_name" {
  description = "Reader policy name"
  default     = ""
}

variable "mount_path" {
  description = "Generic secrets backend"
  default     = ""
}

variable "secret_type" {
  description = "Generic secret type"
  default     = "generic"
}

variable "secrets_path" {
  description = "Path of the generic secrets"
  default     = ""
}

variable "secrets_json_file" {
  description = "Just a couple of unuseful secrets"
  default     = <<EOT
{
"secret-1": "i_am_the_secret_1",
"secret-2": "i_am_the_secret_2"
}
EOT
}
