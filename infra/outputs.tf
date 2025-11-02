output "artifact_paths" {
  value = [for f in local_file.artifact : f.filename]
}

output "private_key_pem_preview" {
  value     = substr(tls_private_key.pk.private_key_pem, 0, 64)
  sensitive = true
}
