resource "vault_mount" "ots-secrets" {
  path        = "ots"
  type        = "kv-v2"
  description = "This is an example KV Version 2 secret engine mount"
}


resource "vault_generic_secret" "secret" {
  path = "${vault_mount.ots-secrets.path}/secrets"
  data_json = jsonencode(
    {
      service_account_key = "${var.sa_key}",
      project_id          = "${var.project_id}"
    }
  )
}