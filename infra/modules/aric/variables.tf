variable "project" {
  type = string
}

variable "env" {
  type = object({
    name = string
    tier = string
  })
}
