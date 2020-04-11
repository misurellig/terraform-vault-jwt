output "policy_owner_name" {
  description = "Owener policy name"
  value       = vault_policy.owner.name
}

output "policy_reader_name" {
  description = "Reader policy name"
  value       = vault_policy.reader.name
}
