variable "project" {
  type = string
}

variable "env" {
  description = "Environment name and it's tier. For example 'prod', 'preprod', 'test' etc"
  type = object({
    name = string
    tier = string
  })
}
