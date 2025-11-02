variable "project" {
  type        = string
  description = "Visa TF Problem"
  default     = "tf-debug-lab"
}

variable "instances" {
  type        = number
  description = "How many artifacts to emit"
  default     = 2
}

variable "env" {
  type        = string
  description = "Environment label"
  default     = "dev"
}
