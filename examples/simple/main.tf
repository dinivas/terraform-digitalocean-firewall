module "firewall" {
  source = "../../"
  name   = "dinivas-example-firewall-rules"
  tags   = ["dinivas"]
  inbound_rules = [
    {
      protocol         = "tcp"
      port_range       = 22
      source_addresses = "0.0.0.0/0"
    },
    {
      protocol         = "icmp"
      port_range       = null
      source_addresses = "0.0.0.0/0"
    }
  ]
  outbound_rules = [
    {
      protocol              = "udp"
      port_range            = 53
      destination_addresses = "0.0.0.0/0"
    }
  ]
}
