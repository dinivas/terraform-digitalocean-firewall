output "name" {
  value = "${openstack_networking_secgroup_v2.this.name}"
}
output "id" {
  value = "${openstack_networking_secgroup_v2.this.*.id}"
}