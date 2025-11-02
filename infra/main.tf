locals {
  timestamp = timestamp()
}

module "example" {
  source = "./modules/aric?ref=v0.1.0"
  project = var.project
  env     = var.env
  count   = var.instances
}

resource "random_id" "suffix" {
  count  = var.instances
  byte_length = 2
}

resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 1024
}

resource "local_file" "artifact" {
  count    = var.instances
  filename = "${path.module}/artifacts/${var.project}-${count.index}.json"
  content  = jsonencode({
    project   = var.project
    env       = var.env
    index     = count.index
    suffix    = random_id.suffix[count.index].hex
    createdAt = local.timestamp
  })
}

resource "null_resource" "notify" {
  triggers = {
    artifact_count = tostring(var.instances)
  }

  provisioner "local-exec" {
    command = "echo Generated ${self.triggers.artifact_count} artifacts for ${var.project}"
  }
}
