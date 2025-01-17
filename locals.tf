locals {
  name = "${var.config.name}-${random_string.random.result}"
}
