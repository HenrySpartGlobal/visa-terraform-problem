locals {
  label = "${var.project}-${var.env.name}-${var.env.tier}"
}

resource "local_file" "module_note" {
  filename = "${path.module}/module-note.txt"
  content  = "module.example label=${local.label}"
}
