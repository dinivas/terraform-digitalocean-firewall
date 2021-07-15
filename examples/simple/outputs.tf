output "firewall_id" {
  description = "The firewall rules id"
  value       = module.firewall.id
}
output "firewall_name" {
  description = "The firewall rules name"
  value       = module.firewall.name
}
output "firewall_status" {
  description = "The firewall rules status"
  value       = module.firewall.status
}
