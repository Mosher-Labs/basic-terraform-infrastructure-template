variable "config" {
  description = "The config for creating this infrastructure."
  type = object({
    name = string
  })
}
