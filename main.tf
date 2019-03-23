resource "openstack_networking_secgroup_v2" "this" {
  name                 = "${var.name}-sg"
  description          = "${var.description}"
  delete_default_rules = "${var.delete_default_rules}"
}

resource "openstack_networking_secgroup_rule_v2" "this" {
  count             = "${length(var.rules)}"
  port_range_min    = "${lookup(var.rules[count.index], "port_range_min")}"
  port_range_max    = "${lookup(var.rules[count.index], "port_range_max")}"
  protocol          = "${lookup(var.rules[count.index], "protocol")}"
  direction         = "${lookup(var.rules[count.index], "direction")}"
  ethertype         = "${lookup(var.rules[count.index], "ethertype")}"
  remote_ip_prefix  = "${lookup(var.rules[count.index], "remote_ip_prefix")}"
  security_group_id = "${element(openstack_networking_secgroup_v2.this.*.id,count.index)}"
}
