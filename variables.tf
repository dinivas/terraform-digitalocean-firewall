variable "name" {
  type    = "string"
  default = "default"
}

variable "description" {
  type    = "string"
  default = "desc"
}

variable "delete_default_rules" {
  type = "string"
  default = "true"
}


variable "rules" {
  type    = "list"
  default = []
}