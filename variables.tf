variable "name" {
  type    = string
  default = "default"
}

variable "tags" {
  type    = list(string)
  default = []
}


variable "inbound_rules" {
  type    = list(map(any))
  default = []
}

variable "outbound_rules" {
  type    = list(map(any))
  default = []
}
