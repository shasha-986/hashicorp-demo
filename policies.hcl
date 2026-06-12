# Vault Policies Configuration

# Admin policy - full access
path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Read-only policy - for crawlers
path "secret/amazon/*" {
  capabilities = ["read"]
}

# Deny access to system backend
path "sys/*" {
  capabilities = ["deny"]
}