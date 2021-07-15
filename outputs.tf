output "id" {
  value = digitalocean_firewall.this.id
}
output "name" {
  value = digitalocean_firewall.this.name
}
output "status" {
  value = digitalocean_firewall.this.status
}
output "tags" {
  value = digitalocean_firewall.this.tags
}
output "inbound_rule" {
  value = digitalocean_firewall.this.inbound_rule
}
output "outbound_rule" {
  value = digitalocean_firewall.this.outbound_rule
}
