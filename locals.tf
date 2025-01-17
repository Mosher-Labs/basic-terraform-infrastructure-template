locals {
  name = "${var.config.name}_${random_string.random.result}"
}
