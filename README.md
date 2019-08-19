# Terraform Openstack security group module

This module create Openstack security group with given rules

## Examples

```
module "security_group" {
  source               = "../../"
  name                 = "example"
  description          = "Instance Rules Project"
  delete_default_rules = "false"
  rules = [
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
    {
      direction        = "ingress"
      ethertype        = "IPv4"
      remote_group_id = "c4208868-ea6f-47c4-917f-02918a7389f3"
    }
  ]
}
```

## Outputs

```
output "name" {
  value = "${openstack_networking_secgroup_v2.this.name}"
}
output "id" {
  value = "${openstack_networking_secgroup_v2.this.id}"
}
```