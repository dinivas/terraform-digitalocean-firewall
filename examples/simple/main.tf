module "security_group" {
  source      = "../../"
  name        = "example"
  description = "Instance Rules Project"
  rules       = "${var.instance-rules-sg}"
}

variable "instance-rules-sg" {
  default = [
    {
      direction        = "ingress"
      ethertype        = "IPv4"
      protocol         = "tcp"
      port_range_min   = 22
      port_range_max   = 22
      remote_ip_prefix = "0.0.0.0/0"
    },
    {
      direction        = "ingress"
      ethertype        = "IPv4"
      protocol         = "icmp"
      port_range_min   = 0
      port_range_max   = 0
      remote_ip_prefix = "0.0.0.0/0"
    },
  ]
}
