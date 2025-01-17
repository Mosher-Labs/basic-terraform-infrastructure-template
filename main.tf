resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${local.name}!"
  }
}

resource "random_string" "random" {
  length  = 6
  special = false
}
