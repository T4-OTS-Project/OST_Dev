#Creates random password for the user
resource "random_password" "password" {
  length  = 16
  special = false
  numeric = true
}

#Creates branch
resource "vault_mount" "ots-db" {
  path        = "ots"
  type        = "kv-v2"
  description = "This is an example KV Version 2 secret engine mount"
}

#Creates secret for auth to db
resource "vault_generic_secret" "secret" {
  path = "${vault_mount.ots-db.path}/db-usernames"
  data_json = jsonencode(
    {
      username = "admin",
      password = "${random_password.password.result}"
    }
  )
}