data "vault_generic_secret" "sample" {
  path = "kv/demo"
}

# Rundeck Provider, for example
# For this example, in Vault there is a key named "auth_token" and the value is the token we need to keep secret.
# In general usage, replace "auth_token" with the key you wish to extract from Vault.

provider "vault" {
  address        = "http://34.236.156.171:8200"
  token = var.token
}

variable "token" {}

output "secret" {
  value = data.vault_generic_secret.sample
}

