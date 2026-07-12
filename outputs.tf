output "synapse_firewall_rules_id" {
  description = "Map of id values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.id }
}
output "synapse_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.end_ip_address }
}
output "synapse_firewall_rules_name" {
  description = "Map of name values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.name }
}
output "synapse_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.start_ip_address }
}
output "synapse_firewall_rules_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.synapse_workspace_id }
}

